#!/bin/bash

echo "make sure that file \"_test-subject/xpdf/listmainfiles.txt\" contains absolute path to list of files that contain main function"
echo "for example the contain of file is :"
echo "/home/irfanariq/unit-test/CITRUS/_test-subject/xpdf/xpdf/pdftops.cc"
exit()
# remove the above command after you modify the file

# xpdf <<>> ===================================
SUBJ_SRC_DIR="_test-subject/xpdf"
TRANS_UNIT="${SUBJ_SRC_DIR}/xpdf/pdftops.cc"
OBJS_DIR="${SUBJ_SRC_DIR}/build-verbose/xpdf/CMakeFiles/xpdf_objs.dir"
MAX_DEPTH=1
XTRA_LD=""
MAKELOG_PATH="_test-subject/xpdf/build-verbose/makelog"
EXEC_PATH="_test-subject/xpdf/build-verbose/xpdf/pdftops"
LISTMAINFILE_PATH="_test-subject/xpdf/listmainfiles.txt"

TIMEOUT=3600
OUTPUT_DIR="_out-test/xpdf-220902-${TIMEOUT}-r"

# CITRUS ==========
rm -rf ${OUTPUT_DIR}
mkdir -p ${OUTPUT_DIR}
TOOL_EXE="/path/to/clementine" # MODIFY THIS
# ${TOOL_EXE} ${TRANS_UNIT} --obj-dir ${OBJS_DIR} --src-dir ${SUBJ_SRC_DIR} --max-depth ${MAX_DEPTH} --fuzz-timeout ${TIMEOUT} --xtra-ld "${XTRA_LD}" --out-prefix ${OUTPUT_DIR} --makefile-log ${MAKELOG_PATH} --exec-path ${EXEC_PATH} --list-main-file ${LISTMAINFILE_PATH} 
