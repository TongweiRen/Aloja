#include<iostream>
#include<fstream>

#include "../include/MyTest.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Operator.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
//#include "llvm/Support/JSON.h"
//#include "llvm/Support/raw_os_ostream.h"
//#include "llvm/Bitcode/BitcodeWriter.h"

using namespace llvm;

#define DEBUG_TYPE "MyTest"

//STATISTIC(SubstCount, "The # of substituted instructions");

//using JObject = json::Object;
//using JValue = json::Value;
//using JArray = json::Array;

//-----------------------------------------------------------------------------
// Mutate Implementation.
//-----------------------------------------------------------------------------

bool MyTest::runOnModule(Module &M) {
    bool Changed = false;

    auto &CTX = M.getContext();
    auto &FuncList = M.getFunctionList();

    for (auto &Func: M) {
        if (Func.getName() == "send__connect"){
            DominatorTree *T = new DominatorTree();
            T->print(errs());
            for (auto &BB : Func) {
                for (auto &BB2 : Func) {
                    // errs() << "[+] Function: " << Func.getName() << "\n";
                    BB.printAsOperand(errs(), false);
                    errs()<<"->>";
                    BB2.printAsOperand(errs(), false);
                    errs()<<": "<<T->dominates(&BB, &BB2)<<"\n";
                }
            }
        }
    }

    return Changed;
}

PreservedAnalyses MyTest::run(llvm::Module &M,
                                 llvm::ModuleAnalysisManager &) {
    bool Changed = runOnModule(M);

    return (Changed ? llvm::PreservedAnalyses::none()
                    : llvm::PreservedAnalyses::all());
}

bool LegacyMyTest::runOnModule(llvm::Module &M) {
    bool Changed = Impl.runOnModule(M);

    return Changed;
}

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getMyTestPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "MyTest", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "MyTest") {
                                MPM.addPass(MyTest());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getMyTestPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
char LegacyMyTest::ID = 0;

// Register the pass - required for (among others) opt
static RegisterPass<LegacyMyTest> X("legacy-MyTest",
                                       "Instruction addition for diversification",
                                       true, // doesn't modify the CFG => true
                                       false // not a pure analysis pass => false
);
