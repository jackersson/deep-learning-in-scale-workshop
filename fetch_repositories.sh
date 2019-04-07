ROOT_DIR=$PWD

source venv/bin/activate

cd $ROOT_DIR
git clone https://github.com/jackersson/gst-python-plugins.git
cd gst-python-plugins
if [ ! -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

cd $ROOT_DIR
git clone https://github.com/jackersson/gst-plugins-tf.git
cd gst-plugins-tf
if [ ! -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

cd $ROOT_DIR
git clone https://github.com/jackersson/gst-video-surveillance.git
cd gst-video-surveillance
if [ ! -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

