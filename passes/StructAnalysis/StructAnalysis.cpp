/**
 * Struct Analysis for showing all candidate structs.
 * 
 * opt -load ./libStructList.so --legacy-struct-list <file.bc>
**/

#include<iostream>
#include<fstream>

#include "../include/StructAnalysis.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Operator.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

using namespace llvm;

#define DEBUG_TYPE "struct-list"

//-----------------------------------------------------------------------------
// Struct Analysis Implementation.
//-----------------------------------------------------------------------------
bool StructList::runOnModule(Module &M) {
    bool Changed = false;

    auto &CTX = M.getContext();
    auto &FuncList = M.getFunctionList();
    auto StructTypes = M.getIdentifiedStructTypes();

    //M.getOrInsertFunction(...)
    //llvm::ConstantInt *nonce = llvm::ConstantInt::get(CTX, llvm::APInt(32, StringRef("1337"), 10));
    // Value *nonceVal = llvm::ConstantInt::get(llvm::Type::getInt32Ty(CTX), 1337);

    // for (auto &Func: M) {
    //     errs() << "[+] Function: " << Func.getName() << "\n";
    // }

    std::string scheck = "struct.";

    // int count = 0;
    for (auto structObj : StructTypes) {
        int struct_val_elements = structObj->getStructNumElements();
        std::string sname = std::string(structObj->getName());
        // auto G = structObj->element_end();
        // for (auto E = structObj->element_begin();  E != G; E++){
        //     E.printAsOperand(errs(), false);
        // }
        // if (sname.rfind(scheck, 0) == 0) {
        errs() << "[+]" << sname << ":";
        // if (sname == "struct.mosquitto__auth_plugin") {
        for (int i = 0; i < struct_val_elements; i++){
            auto elem = structObj->getTypeAtIndex(i);
            errs() << *elem << ";";
            // count++;
        }
            // }
            
            // errs() << sname << "\n";
            
        // }
        // errs() << "[+] Struct: " << structObj->getName() << "\n";
    }

    // errs() << "[+] Structs in IR: " << count << "\n";

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

PreservedAnalyses StructList::run(llvm::Module &M,
                                 llvm::ModuleAnalysisManager &) {
    bool Changed = runOnModule(M);

    return (Changed ? llvm::PreservedAnalyses::none()
                    : llvm::PreservedAnalyses::all());
}

bool LegacyStructList::runOnModule(llvm::Module &M) {
    bool Changed = Impl.runOnModule(M);

    return Changed;
}

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getStructListPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "structlist", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "structlist") {
                                MPM.addPass(StructList());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getStructListPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
char LegacyStructList::ID = 0;

// Register the pass - required for (among others) opt
static RegisterPass<LegacyStructList> X("legacy-struct-list",
                                       "List all available structs in target bitcode file",
                                       true, // doesn't modify the CFG => true
                                       false // not a pure analysis pass => false
);
