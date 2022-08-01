#ifndef ALOJA_FUNCTIONPARSER_H
#define ALOJA_FUNCTIONPARSER_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct FunctionParser : public llvm::PassInfoMixin<FunctionParser> {
    llvm::PreservedAnalyses run(llvm::Module &M, 
                                llvm::ModuleAnalysisManager &); 

    static bool runOnModule(llvm::Module &M);
};

struct LegacyFunctionParser : public llvm::ModulePass {
    static char ID; 

    LegacyFunctionParser() : ModulePass(ID) {}

    bool runOnModule(llvm::Module &M) override;

    FunctionParser Impl;
};

#endif //ALOJA_FUNCTIONPARSER_H
