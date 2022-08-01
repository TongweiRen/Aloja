/**
 * Function Parser for showing all candidate functions.
 * 
 * opt -load ./libFunctionParser.so --legacy-function-parser <file.bc>
**/

#include<iostream>
#include<fstream>

#include "../include/FunctionParser.h"

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Operator.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

using namespace llvm;

#define DEBUG_TYPE "function-parser"

//-----------------------------------------------------------------------------
// Function Parser Implementation.
//-----------------------------------------------------------------------------
bool FunctionParser::runOnModule(Module &M) {
    bool Changed = false;

    auto &CTX = M.getContext();
    auto &FuncList = M.getFunctionList();
    auto StructTypes = M.getIdentifiedStructTypes();

    int count = 0;
    for (auto &Func: M) {
        errs() << Func.getName() << "\n";
        count++;
    }

    // errs() << "[+] Total functions in IR: " << count << "\n";
    
    return Changed;
}

PreservedAnalyses FunctionParser::run(llvm::Module &M,
                                 llvm::ModuleAnalysisManager &) {
    bool Changed = runOnModule(M);

    return (Changed ? llvm::PreservedAnalyses::none()
                    : llvm::PreservedAnalyses::all());
}

bool LegacyFunctionParser::runOnModule(llvm::Module &M) {
    bool Changed = Impl.runOnModule(M);

    return Changed;
}

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getFunctionParserPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "functionparser", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "functionparser") {
                                MPM.addPass(FunctionParser());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getFunctionParserPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
char LegacyFunctionParser::ID = 0;

// Register the pass - required for (among others) opt
static RegisterPass<LegacyFunctionParser> X("legacy-function-parser",
                                       "List all available functions in target bitcode file",
                                       true, // doesn't modify the CFG => true
                                       false // not a pure analysis pass => false
);
