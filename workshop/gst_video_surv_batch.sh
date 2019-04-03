rm -rf ~/.cache/gstreamer-1.0/
# export GST_PLUGIN_PATH=gst-video-surveillance/core/gst

cd gst-video-surveillance
# python run.py -c single
python run.py -c batch_double
# python run.py -c triple
# python run.py -c quadruple