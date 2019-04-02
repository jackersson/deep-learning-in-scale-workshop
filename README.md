### deep-learning-in-scale-workshop

#### Installation
    make setup
    source venv/bin/activate


####
pip install -r requirements.txt

export GST_PLUGIN_PATH=GST_PLUGIN_PATH:$PWD/gst-plugins-tf/gst

gst-inspect-1.0 gstplugin_py
gst-inspect-1.0 gst_tf_detection
gst-inspect-1.0 gst_detection_overlay

rm -rf ~/.cache/gstreamer-1.0/


### example of gst_tf_detection + log
GST_DEBUG=python:4 gst-launch-1.0 filesrc location=ai-stream/data/videos/MOT17-09.mp4 ! decodebin ! videoconvert !  video/x-raw,format=RGB ! gst_tf_detection config=gst-plugins-tf/gst/configs/cfg.yml ! videoconvert ! gtksink sync=False

### example of gst_tf_detection + draw: gst_detection_overlay
GST_DEBUG=python:4 gst-launch-1.0 filesrc location=ai-stream/data/videos/MOT17-09.mp4 ! decodebin ! videoconvert !  video/x-raw,format=RGB ! gst_tf_detection config=gst-plugins-tf/gst/configs/cfg.yml ! videoconvert ! gst_detection_overlay ! videoconvert ! gtksink sync=False

### example of gst_tf_detection + draw: gst_detection_overlay + fps
GST_DEBUG=python:4 gst-launch-1.0 filesrc location=ai-stream/data/videos/MOT17-09.mp4 ! decodebin ! videoconvert !  video/x-raw,format=RGB ! gst_tf_detection config=gst-plugins-tf/gst/configs/cfg.yml ! videoconvert ! gst_detection_overlay ! videoconvert ! fpsdisplaysink video-sink=gtksink sync=False

### example of gst_tf_detection + draw: gst_detection_overlay -> to video file
GST_DEBUG=python:4 gst-launch-1.0 filesrc location=ai-stream/data/videos/MOT17-09.mp4 ! decodebin ! videoconvert !  video/x-raw,format=RGB ! gst_tf_detection config=gst-plugins-tf/gst/configs/cfg.yml ! videoconvert ! gst_detection_overlay !  videoconvert ! x264enc tune=zerolatency ! mp4mux ! filesink location=out.mp4 -e

### example of multiple gst_tf_detection + draw: gst_detection_overlay
