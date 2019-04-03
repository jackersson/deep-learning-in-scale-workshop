rm -rf ~/.cache/gstreamer-1.0/
export GST_PLUGIN_PATH=gst-plugins-tf/gst
# export CUDA_VISIBLE_DEVICES=""


FILENAME="data/videos/Pyrohova_Street.mp4"
TF_MODEL_CONFIG="gst-plugins-tf/data/tf_object_api_cfg.yml"


GST_DEBUG=python:4 gst-launch-1.0 filesrc location=$FILENAME ! decodebin ! videoconvert ! \
    video/x-raw,format=RGB ! gst_tf_detection config=$TF_MODEL_CONFIG ! videoconvert ! gtksink sync=False