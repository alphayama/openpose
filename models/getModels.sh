# ------------------------- BODY, FOOT, FACE, AND HAND MODELS -------------------------
# Downloading body pose (COCO and MPI), face and hand models
# OPENPOSE_URL="http://vcl.snu.ac.kr/OpenPose/models/"
POSE_FOLDER="pose/"
FACE_FOLDER="face/"
HAND_FOLDER="hand/"

# ------------------------- POSE (BODY+FOOT) MODELS -------------------------
# Body (BODY_25)
BODY_25_FOLDER=${POSE_FOLDER}"body_25/"
BODY_25_MODEL=${BODY_25_FOLDER}"pose_iter_584000.caffemodel"
BODY_25_URL="https://www.dropbox.com/s/3x0xambj2rkyrap/pose_iter_584000.caffemodel"
wget -c ${BODY_25_URL} -P ${BODY_25_FOLDER}

# Body (COCO)
COCO_FOLDER=${POSE_FOLDER}"coco/"
COCO_MODEL=${COCO_FOLDER}"pose_iter_440000.caffemodel"
COCO_URL="https://github.com/foss-for-synopsys-dwc-arc-processors/synopsys-caffe-models/raw/master/caffe_models/openpose/caffe_model/pose_iter_440000.caffemodel"
wget -c ${COCO_URL} -P ${COCO_FOLDER}
# Alternative: it will not check whether file was fully downloaded
# if [ ! -f $COCO_MODEL ]; then
#     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# fi

# Body (MPI)
MPI_FOLDER=${POSE_FOLDER}"mpi/"
MPI_MODEL=${MPI_FOLDER}"pose_iter_160000.caffemodel"
MPI_URL="https://huggingface.co/camenduru/openpose/resolve/f4a22b0e6fa2a4a2b1e2d50bd589e8bb11ebea7c/pose_iter_160000.caffemodel"
wget -c ${MPI_URL} -P ${MPI_FOLDER}

# "------------------------- FACE MODELS -------------------------"
# Face
FACE_MODEL=${FACE_FOLDER}"pose_iter_116000.caffemodel"
FACE_URL="https://www.dropbox.com/s/d08srojpvwnk252/pose_iter_116000.caffemodel"
wget -c ${FACE_URL} -P ${FACE_FOLDER}

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL=$HAND_FOLDER"pose_iter_102000.caffemodel"
HAND_URL="https://www.dropbox.com/s/gqgsme6sgoo0zxf/pose_iter_102000.caffemodel"
wget -c ${FACE_URL} -P ${HAND_FOLDER}
