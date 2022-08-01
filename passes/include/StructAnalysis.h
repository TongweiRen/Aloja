#ifndef ALOJA_STRUCTLIST_H
#define ALOJA_STRUCTLIST_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct StructList : public llvm::PassInfoMixin<StructList> {
    llvm::PreservedAnalyses run(llvm::Module &M,
                                llvm::ModuleAnalysisManager &);

    static bool runOnModule(llvm::Module &M);
};

struct LegacyStructList : public llvm::ModulePass {
    static char ID;

    LegacyStructList() : ModulePass(ID) {}

    bool runOnModule(llvm::Module &M) override;

    StructList Impl;
};

#endif //ALOJA_STRUCTLIST_H
