#include "../include/Mutate.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
//#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#include <random>

using namespace llvm;

#define DEBUG_TYPE "mutate"

STATISTIC(SubstCount, "The # of substituted instructions");

//-----------------------------------------------------------------------------
// Mutate Implementation.
//-----------------------------------------------------------------------------
bool Mutate::runOnBasicBlock(BasicBlock &BB) {
    bool Changed = false;

    // Loop over all instructions in the block. Replacing instructions requires
    // iterators, hence a for-range loop wouldn't be suitable.
    int i = 0;
    for (auto Inst = BB.begin(), IE = BB.end(); Inst != IE; ++Inst) {
        if (i>0) return 0;
        // Skip non-binary (e.g. unary or compare) instruction.
        auto *BinOp = dyn_cast<llvm::StoreInst>(Inst);
        if (!BinOp)
            continue;
        
        errs() << "[+] Test: " << *BinOp << "\n";

        //Instruction *terminator = BB.getTerminator();
        //errs() << "Prev term:\t" << *BinOp->getPrevNode() << "\n";

        // TEST: RPW.
        /*auto *CallInst = dyn_cast<llvm::CallInst>(Inst);
        if (CallInst == nullptr)
            continue;
        errs() << "Call inst:\t" << CallInst << "\n";*/
        // END TEST.

        // Skip instructions other than integer sub.
        unsigned Opcode = BinOp->getOpcode();
        StringRef Name = Inst->getOpcodeName();
        //errs() << "Opcode Name:\t" << Name << "\n";

        // Put the new NOP instruction before a terminator?
        //if (isa<ReturnInst>(terminator))
        //    errs() << "[+] Test terminator:\t" << terminator << "\n";

        // TODO: check correct instruction name for call.
        //if (BinOp->getOpcode() == Instruction::Call)
        //    errs() << "TEST\n";

        // Skip instructions other than add.
        if (BinOp->getOpcode() != Instruction::Store)
            continue;

        // A uniform API for creating instructions and inserting
        // them into basic blocks.
        IRBuilder<> Builder(BinOp);

        //Target the instruction that we want our NOP to be placed before/after.
        Instruction *I = BB.getFirstNonPHIOrDbg();
        *I->getNextNode();

        assert(I);
        //assert(terminator);

        //auto Val = ConstantInt::get(BinOp->getType(), 1);
        //auto Val = ConstantInt::get(Type::getInt8Ty(BB.getContext()), 0);
        // This automatically adds the new NOP instruction before `I`.
        //errs() << "Changing instruction in BasicBlock:\t" << &BB << "\n";
        //auto *NewInst = BinaryOperator::Create(Instruction::Add, Val, Val, "nop", I);

        //LLVM_DEBUG(dbgs() << I << " -> " << *NewInst << "\n");
        //errs() << "Test:\t" << *I << " --> " << *NewInst << "\t" << *I << "\n";

        //errs() << "Test: val:\t" << Val << "\n";
        //StringRef nin = NewInst->getOpcodeName();
        //errs() << "Test: new instruction:\t" << nin << "\n";
        //ReplaceInstWithInst(BB.getInstList(), Inst, NewInst);
        //Value *nonce = llvm::ConstantInt::get(llvm::Type::getInt32Ty(BB.getContext()), 1337);
        llvm::ConstantInt *nonce = llvm::ConstantInt::get(BB.getContext(), llvm::APInt(32, StringRef("1337"), 10));
        //auto *NewInst = new llvm::StoreInst(nonce, BinOp);
        StoreInst *strInst = Builder.CreateStore(nonce, BinOp->getNextNode());
        //ReplaceInstWithInst(BB.getInstList(), Inst, strInst);
        //BB.getInstList().insert(Inst, strInst);

        i++;
        Changed = true;

        // Create an instruction representing (a + ~b) + 1
        /*Instruction *NewValue = BinaryOperator::CreateAdd(
                Builder.CreateAdd(BinOp->getOperand(0),
                                  Builder.CreateNot(BinOp->getOperand(1))),
                ConstantInt::get(BinOp->getType(), 1));

        // The following is visible only if you pass -debug on the command line
        // *and* you have an assert build.
        LLVM_DEBUG(dbgs() << *BinOp << " -> " << *NewValue << "\n");

        // Replace `(a - b)` (original instructions) with `(a + ~b) + 1`
        // (the new instruction)
        ReplaceInstWithInst(BB.getInstList(), Inst, NewValue);
        Changed = true;*/

        // Update the statistics.
        ++SubstCount;
    }
    return Changed;
}

PreservedAnalyses Mutate::run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &) {
    bool Changed = false;

    for (auto &BB : F) {
        //errs() << "BB:\t" << BB << "\n";
        Changed |= runOnBasicBlock(BB);
    }
    return (Changed ? llvm::PreservedAnalyses::none()
                    : llvm::PreservedAnalyses::all());
}

bool LegacyMutate::runOnFunction(llvm::Function &F) {
    bool Changed = false;

    for (auto &BB : F) {
        Changed |= Impl.runOnBasicBlock(BB);
    }
    return Changed;
}

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getMutatePluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "mutate", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, FunctionPassManager &FPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "mutate") {
                                FPM.addPass(Mutate());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getMutatePluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
char LegacyMutate::ID = 0;

// Register the pass - required for (among others) opt
static RegisterPass<LegacyMutate> X("legacy-mutate",
                                    "Instruction addition for diversification",
                                    true, // doesn't modify the CFG => true
                                    false // not a pure analysis pass => false
);
