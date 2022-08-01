#ifndef ALOJA_MYTEST_H
#define ALOJA_MYTEST_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct MyTest : public llvm::PassInfoMixin<MyTest> {
    llvm::PreservedAnalyses run(llvm::Module &M,
                                llvm::ModuleAnalysisManager &);

    static bool runOnModule(llvm::Module &M);
};

struct LegacyMyTest : public llvm::ModulePass {
    static char ID;

    LegacyMyTest() : ModulePass(ID) {}

    bool runOnModule(llvm::Module &M) override;

    MyTest Impl;
};

#endif //ALOJA_MYTEST_H
