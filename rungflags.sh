#!/bin/bash

echo "make sure that file \"_test-subject/glog/listmainfiles.txt\" contains absolute path to list of files that contain main function"
echo "the contain of that file is empty (just make sure it exists)"
exit()
# remove the above command after you modify the file

# gflags <<>> ===================================
SUBJ_SRC_DIR="_test-subject/gflags"
TRANS_UNIT="${SUBJ_SRC_DIR}/src/gflags.cc"
OBJS_DIR="${SUBJ_SRC_DIR}/build-verbose/CMakeFiles/gflags_static.dir/src"
MAX_DEPTH=1
XTRA_LD=""
MAKELOG_PATH="_test-subject/gflags/build-verbose/makelog"
EXEC_PATH="_test-subject/gflags/build-verbose/lib/libgflags.a"
LISTMAINFILE_PATH="_test-subject/gflags/listmainfiles.txt"

TIMEOUT=3600
OUTPUT_DIR="_out-test/gflags-220902-${TIMEOUT}-r"

# CITRUS ==========
rm -rf ${OUTPUT_DIR}
mkdir -p ${OUTPUT_DIR}
TOOL_EXE="/path/to/clementine" # MODIFY THIS
# ${TOOL_EXE} ${TRANS_UNIT} --obj-dir ${OBJS_DIR} --src-dir ${SUBJ_SRC_DIR} --max-depth ${MAX_DEPTH} --fuzz-timeout ${TIMEOUT} --xtra-ld "${XTRA_LD}" --out-prefix ${OUTPUT_DIR} --makefile-log ${MAKELOG_PATH} --exec-path ${EXEC_PATH} --list-main-file ${LISTMAINFILE_PATH} 
