#!/bin/sh


CAFFE_ROOT="/work/01932/dineshj/CS381V/caffe_install_scripts/caffe"
CAFFE_TOOL="${CAFFE_ROOT}/build/tools"
CAFFE_DATA="${CAFFE_ROOT}/data/flickr_style"
CAFFE_MODEL="${CAFFE_ROOT}/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel"

TRAIN_VAL="/work/04018/wxie/maverick/visual_recognition/finetune/train_val_lmdb.prototxt"
SOLVER="/work/04018/wxie/maverick/visual_recognition/finetune/solver_lmdb.prototxt"
WEIGHTS="/work/04018/wxie/maverick/visual_recognition/states/443733/finetune_lmdb_iter_600.caffemodel"

    ${CAFFE_TOOL}/caffe test -model ${TRAIN_VAL} -weights ${WEIGHTS} -gpu all
