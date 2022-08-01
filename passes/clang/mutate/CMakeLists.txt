set(CodeRefactor
    CodeRefactor.cpp)

set(RewriterTest
    rewriter-test.cpp)

# Create a library corresponding to 'plugin'
add_library(
    CodeRefactor
    SHARED
    CodeRefactor.cpp
    )

add_library(
    RewriterTest
    SHARED
    rewriter-test.cpp
    )

# Configure include directories for 'plugin'
target_include_directories(
    CodeRefactor
    PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/../include"
  )