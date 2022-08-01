#ifndef ALOJA_INSTRUMENT_BASIC_H
#define ALOJA_INSTRUMENT_BASIC_H

#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"

//------------------------------------------------------------------------------
// New PM interface
//------------------------------------------------------------------------------
struct InjectFuncCall : public llvm::PassInfoMixin<InjectFuncCall> {
  llvm::PreservedAnalyses run(llvm::Module &M,
  			      llvm::ModuleAnalysisManager &);
  bool runOnModule(llvm::Module &M);
};

//------------------------------------------------------------------------------
// Legacy PM interface
//------------------------------------------------------------------------------
struct LegacyInjectFuncCall : public llvm::ModulePass {
  static char ID;
  LegacyInjectFuncCall() : ModulePass(ID) {}
  bool runOnModule(llvm::Module &M) override;

  InjectFuncCall Impl;
};

#endif //ALOJA_INSTRUMENT_BASIC_H
