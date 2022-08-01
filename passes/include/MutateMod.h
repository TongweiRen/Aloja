#ifndef ALOJA_MUTATEMOD_H
#define ALOJA_MUTATEMOD_H

#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

struct MutateMod : public llvm::PassInfoMixin<MutateMod> {
    llvm::PreservedAnalyses run(llvm::Module &M,
                                llvm::ModuleAnalysisManager &);

    static bool runOnModule(llvm::Module &M);
};

struct LegacyMutateMod : public llvm::ModulePass {
    static char ID;

    LegacyMutateMod() : ModulePass(ID) {}

    bool runOnModule(llvm::Module &M) override;

    MutateMod Impl;
};

#endif //ALOJA_MUTATEMOD_H
