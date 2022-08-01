cmake_minimum_required(VERSION 3.4.3)
project(llvm-mutate)

#===============================================================================
# 1. LOAD LLVM CONFIGURATION
#===============================================================================
# Set this to a valid LLVM installation dir
set(LT_LLVM_INSTALL_DIR "" CACHE PATH "LLVM installation directory")

# Add the location of LLVMConfig.cmake to CMake search paths (so that
# find_package can locate it)
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

find_package(LLVM 12.0.0 REQUIRED CONFIG)

# Mutate includes headers from LLVM - update the include paths accordingly
include_directories(${LLVM_INCLUDE_DIRS})

#===============================================================================
# 2. PROJECT BUILD CONFIGURATION
#===============================================================================
# Use the same C++ standard as LLVM does
set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if (NOT LLVM_ENABLE_RTTI)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif ()

#===============================================================================
# 3. ADD THE TARGET
#===============================================================================
# add_library(Mutate SHARED Mutate.cpp)
add_library(MutateMod SHARED MutateMod.cpp)
# add_library(Inject SHARED InjectFuncCall.cpp)
add_library(StructList SHARED StructAnalysis.cpp)
add_library(FunctionParser SHARED FunctionParser.cpp)
add_library(MyTest SHARED MyTest.cpp)
