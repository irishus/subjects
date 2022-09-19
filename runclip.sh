#!/bin/bash

echo "make sure that file \"_test-subject/clip/listmainfiles.txt\" contains absolute path to list of files that contain main function"
echo "for example the contain of file is :"
echo "/home/irfanariq/unit-test/CITRUS/_test-subject/clip/src/cli.cc"
exit()
# remove the above command after you modify the file

# clip <<>> ===================================
SUBJ_SRC_DIR="_test-subject/clip"
TRANS_UNIT="${SUBJ_SRC_DIR}/src/cli.cc"
OBJS_DIR="${SUBJ_SRC_DIR}/build-verbose/CMakeFiles/clip.dir/src/"
MAX_DEPTH=2
XTRA_LD=""
MAKELOG_PATH="_test-subject/clip/build-verbose/makelog"
EXEC_PATH="_test-subject/clip/build-verbose/clip"
LISTMAINFILE_PATH="_test-subject/clip/listmainfiles.txt"

TIMEOUT=3600
OUTPUT_DIR="_out-test/clip-220902-${TIMEOUT}-r"

# CITRUS ==========
rm -rf ${OUTPUT_DIR}
mkdir -p ${OUTPUT_DIR}
TOOL_EXE="/path/to/clementine" # MODIFY THIS
# ${TOOL_EXE} ${TRANS_UNIT} --obj-dir ${OBJS_DIR} --src-dir ${SUBJ_SRC_DIR} --max-depth ${MAX_DEPTH} --fuzz-timeout ${TIMEOUT} --xtra-ld "${XTRA_LD}" --out-prefix ${OUTPUT_DIR} --makefile-log ${MAKELOG_PATH} --exec-path ${EXEC_PATH} --list-main-file ${LISTMAINFILE_PATH} 
