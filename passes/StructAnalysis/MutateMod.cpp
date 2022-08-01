#include<iostream>
#include<fstream>

#include "../include/MutateMod.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Operator.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
//#include "llvm/Support/JSON.h"
//#include "llvm/Support/raw_os_ostream.h"
//#include "llvm/Bitcode/BitcodeWriter.h"

using namespace llvm;

#define DEBUG_TYPE "mutate-mod"

//STATISTIC(SubstCount, "The # of substituted instructions");

//using JObject = json::Object;
//using JValue = json::Value;
//using JArray = json::Array;

//-----------------------------------------------------------------------------
// Mutate Implementation.
//-----------------------------------------------------------------------------
bool MutateMod::runOnModule(Module &M) {
    bool Changed = false;

    auto &CTX = M.getContext();
    auto &FuncList = M.getFunctionList();

    //M.getOrInsertFunction(...)
    //llvm::ConstantInt *nonce = llvm::ConstantInt::get(CTX, llvm::APInt(32, StringRef("1337"), 10));
    Value *nonceVal = llvm::ConstantInt::get(llvm::Type::getInt32Ty(CTX), 1337);

    for (auto &Func: M) {
        //errs() << "[+] Function: " << Func.getName() << "\n";
        for (auto &BB : Func) {
            //errs() << "\t[+] Basic block: " << BB.getName() << "\n";
            for (auto &Ins : BB) {

                // if (auto *SI = dyn_cast<llvm::StoreInst>(&Ins)) {
                //     // TEST.
                //     //IRBuilder<> Builder(SI);

                //     errs() << "[+] Inserting StoreInst...\n";
                //     llvm::StoreInst *StInst = new llvm::StoreInst(nonceVal, SI);
                //     StInst->insertAfter(SI);
                //     //BB.getInstList().insert(Ins, StInst);

                //     //auto store = new llvm::StoreInst(nonceVal, SI, Func);
                //     //store->insertAfter(SI);
                //     return 0;
                // }

                // Got a GEP. Now we need to see if it uses our struct.
                if (isa<GEPOperator>(Ins)) { // isa<AllocaInst>(Ins)
                    // TODO: put check here for existence of the struct we want (struct.mosquitto).
                    errs() << "[+] Instruction: " << Ins << "\n"; //.getOpcodeName()

                    // All values that a particular instruction uses.
                    for (const llvm::Use &U : Ins.operands()) {
                        Value *v = U.get();
                        errs() << "\t[+] Operand: " << *v << "\n";
                    }

                    // Print parent function of GEP instruction.
                    errs() << "\t[+] Parent function: " << Ins.getFunction()->getName() << "\n";

                    // TODO: make this another function later.
                    // Skip non-binary (e.g. unary or compare) instruction.
                    //auto *BinOp = dyn_cast<BinaryOperator>(Ins);
                    //if (!BinOp)
                    //    continue;
                    
                    // TEST: RPW.
                    /*auto *CallInst = dyn_cast<llvm::CallInst>(Inst);
                    if (CallInst == nullptr)
                        continue;
                    errs() << "Call inst:\t" << CallInst << "\n";*/
                    // END TEST.

                    /*Instruction *I = BB.getFirstNonPHIOrDbg();
                    assert(I);

                    auto Val = ConstantInt::get(Type::getInt8Ty(BB.getContext()), 0);
                    errs() << "Changing instruction in BasicBlock:\t" << BB << "\n";

                    auto *NewInst = BinaryOperator::Create(Instruction::Add, Val, Val, "nop", I);*/
                    //Type *int_type = Type::getInt32Ty(getGlobalContext());
                    //StructType *at = StructType::create("nonce", int_type, int_type, int_type);

                } else {
                    //errs() << "Didn't get a GEP\n";
                    continue;
                }
            }
        }
    }

    /*for (auto &function : FuncList) {
        //auto fnames = F.getName();
        for (auto &bb : function) {
            for (auto &inst : bb) {
                auto *callInst = dyn_cast<llvm::CallInst>(&inst);
                Function *calledFunction = callInst->getCalledFunction();
                outs() << "Called func:\t" << calledFunction << "\n";
            }
        }
    }*/

    return Changed;
}

PreservedAnalyses MutateMod::run(llvm::Module &M,
                                 llvm::ModuleAnalysisManager &) {
    bool Changed = runOnModule(M);

    return (Changed ? llvm::PreservedAnalyses::none()
                    : llvm::PreservedAnalyses::all());
}

bool LegacyMutateMod::runOnModule(llvm::Module &M) {
    bool Changed = Impl.runOnModule(M);

    return Changed;
}

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getMutateModPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "mutate", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "mutate") {
                                MPM.addPass(MutateMod());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getMutateModPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
char LegacyMutateMod::ID = 0;

// Register the pass - required for (among others) opt
static RegisterPass<LegacyMutateMod> X("legacy-mutate",
                                       "Instruction addition for diversification",
                                       true, // doesn't modify the CFG => true
                                       false // not a pure analysis pass => false
);
