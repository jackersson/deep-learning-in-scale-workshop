rm -rf ~/.cache/gstreamer-1.0/
export GST_PLUGIN_PATH=gst-plugins-tf/gst

FILENAME_1="data/videos/Pyrohova_Street.mp4"
FILENAME_2="data/videos/Soborna_Street.mp4"
FILENAME_3="data/videos/Maksymovicha_Street.mp4"
FILENAME_4="data/videos/MOT17-09.mp4"

TF_MODEL_CONFIG="data/tf_object_api_cfg.yml"

W=320
H=240

gst-launch-1.0 videomixer name=mixer ! videoconvert ! gtksink \
    filesrc location=$FILENAME_1 ! decodebin ! videoconvert  ! video/x-raw,format=RGB ! gst_tf_detection config=$CONFIG ! videoconvert ! gst_detection_overlay !  \
    videoscale ! video/x-raw,width=$W,height=$H ! videoconvert ! videobox top=-$H left=-$W  ! mixer. \
    filesrc location=$FILENAME_2 ! decodebin ! videoconvert  ! video/x-raw,format=RGB ! gst_tf_detection config=$CONFIG ! videoconvert ! gst_detection_overlay ! \
    videoscale ! video/x-raw,width=$W,height=$H ! videoconvert ! videobox top=0 left=-$W ! mixer. \
    filesrc location=$FILENAME_3 ! decodebin ! videoconvert  ! video/x-raw,format=RGB ! gst_tf_detection config=$CONFIG ! videoconvert ! gst_detection_overlay ! \
    videoscale ! video/x-raw,width=$W,height=$H ! videoconvert ! videobox top=-$H left=0 ! mixer. \
    filesrc location=$FILENAME_1 ! decodebin ! videoconvert  ! video/x-raw,format=RGB ! gst_tf_detection config=$CONFIG ! videoconvert ! gst_detection_overlay ! \
    videoscale ! video/x-raw,width=$W,height=$H ! videoconvert ! videobox top=0 left=0 ! mixer.