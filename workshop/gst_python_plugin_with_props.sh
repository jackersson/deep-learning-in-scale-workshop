rm -rf ~/.cache/gstreamer-1.0/
export GST_PLUGIN_PATH=$GST_PYTHON_PATH:gst-python-plugins

GST_DEBUG=python:4 gst-launch-1.0 videotestsrc ! gstplugin_py int-prop=100 float-prop=0.2 bool-prop=True str-prop="set" ! videoconvert ! autovideosink
