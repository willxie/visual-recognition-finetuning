#!/bin/sh


CAFFE_ROOT="/work/01932/dineshj/CS381V/caffe_install_scripts/caffe"
CAFFE_TOOL="${CAFFE_ROOT}/build/tools"
CAFFE_DATA="${CAFFE_ROOT}/data/flickr_style"
CAFFE_MODEL="${CAFFE_ROOT}/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel"


TRAIN="/work/04018/wxie/maverick/visual_recognition/finetune/test_train_lmdb.prototxt"
TEST="/work/04018/wxie/maverick/visual_recognition/finetune/test_test_lmdb.prototxt"
EXTRA="/work/04018/wxie/maverick/visual_recognition/finetune/test_extra_lmdb.prototxt"
COMBINED="/work/04018/wxie/maverick/visual_recognition/finetune/test_combined_lmdb.prototxt"
WEIGHTS="/work/04018/wxie/maverick/visual_recognition/states/443916/finetune_lmdb_iter_54000.caffemodel"


    ${CAFFE_TOOL}/caffe test -model ${TRAIN} -weights ${WEIGHTS} -gpu all
    read -p $'TRAIN set done\nPress [Enter] key to continue.'
    ${CAFFE_TOOL}/caffe test -model ${TEST} -weights ${WEIGHTS} -gpu all
    read -p $'TEST set done\nPress [Enter] key to continue.'
    ${CAFFE_TOOL}/caffe test -model ${EXTRA} -weights ${WEIGHTS} -gpu all
    read -p $'EXTRA set done\nPress [Enter] key to continue.'
    ${CAFFE_TOOL}/caffe test -model ${COMBINED} -weights ${WEIGHTS} -gpu all
    read -p $'COMBINED set done\nPress [Enter] key to continue.'
