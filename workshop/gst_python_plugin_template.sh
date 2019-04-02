
rm -rf ~/.cache/gstreamer-1.0/
export GST_PLUGIN_PATH=gst-python-plugins

GST_DEBUG=python:4 gst-launch-1.0 videotestsrc ! videoconvert ! gstplugin_py ! videoconvert ! gtksink