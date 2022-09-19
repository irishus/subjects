#!/bin/bash

if [[ -z "$1" ]] ; then
  echo "usage: ./comp_subject target_directory subject_name"
  exit
fi

set -euo pipefail

BUILD_DIR="build-verbose"
SUBJECT=$1

cd $SUBJECT
rm -rf ${BUILD_DIR}

# ==== COMMAND TO GET PREPROCESSED FILE ==== --> add flag --save-temps then the preprocessed file will be save with extension *.i/*.ii
# somehow, lcov-filt always fail to find the source file when --save-temps is used
# mkdir -p build && cd build
# cmake -DCMAKE_C_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage --save-temps" \
#   -DCMAKE_CXX_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage --save-temps" \
#   -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" ..
# mv compile_commands.json ..
# make -j3
# cd ..

mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR}
cmake -DCMAKE_C_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage" \
  -DCMAKE_CXX_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage" \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" \
  -DCMAKE_RULE_MESSAGES:BOOL=OFF -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON ..
mv compile_commands.json ..
make -j3 --no-print-directory > makelog
echo "make return code: $?"
cd ..

# mkdir -p build_libfuzzer && cd build_libfuzzer
# cmake -DCMAKE_C_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage" \
#   -DCMAKE_CXX_FLAGS="-g -O0 -fsanitize=fuzzer-no-link --coverage" \
#   -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" ..
# make -j3
# cd ..

cd ..
