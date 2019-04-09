
rm -rf ~/.cache/gstreamer-1.0/
# export GST_PLUGIN_PATH=$GST_PLUGIN_PATH:../gst-python/plugin
export GST_PLUGIN_PATH=$GST_PYTHON_PATH:gst-python-plugins


# gst-launch-1.0 videotestsrc ! videoconvert ! gtksink
GST_DEBUG=python:4 gst-launch-1.0 videotestsrc ! gstplugin_py ! videoconvert ! autovideosink
