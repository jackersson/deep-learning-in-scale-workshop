rm -rf ~/.cache/gstreamer-1.0/
export GST_PLUGIN_PATH=gst-python-plugins

FILENAME="data/videos/trailer.mp4"

# gst-launch-1.0 filesrc location=$FILENAME ! decodebin ! videoconvert ! gaussian_blur kernel=21 sigmaX = 5.0 sigmaY=5.0 ! videoconvert ! autovideosink sync=False

gst-launch-1.0 videomixer name=mixer ! videoconvert ! autovideosink sync=False \
    filesrc location=$FILENAME ! decodebin ! videoconvert ! tee name=t ! queue ! videoconvert ! \
    gaussian_blur kernel=21 sigmaX = 5.0 sigmaY=5.0 ! videobox left=-1280 ! videoconvert ! mixer. \
    t. ! queue ! videobox left=0 ! videoconvert ! mixer.


