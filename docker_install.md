    apt-get update
    apt-get install autoconf cmake libtool nano
    apt-get install gstreamer-1.0 gstreamer1.0-dev
    apt-get install dialog
    apt-get install gstreamer1.0-tools gstreamer1.0-plugins-good
    apt-get install gstreamer1.0-plugins-bad
    apt-get install gstreamer1.0-plugins-ugly
    apt-get install gstreamer1.0-plugins-libav
    apt-get install git 
    apt-get install wget
    apt-get install python3.6 python3.6-dev
    apt-get install python-gi-dev
    apt-get install python3-gst-1.0
    apt-get install python3-venv
    apt-get install zip libcairo-dev

    ln -s /usr/bin/python3.6 /usr/bin/python3

    cd home/

    git clone git://anongit.freedesktop.org/git/gstreamer/gst-python
    cd gst-python
    git checkout 1.14.1
    export PYTHON=/usr/bin/python3
    ./autogen.sh --disable-gtk-doc --noconfigure
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/
    ./configure --with-libpython-dir="/usr/lib/x86_64-linux-gnu"

    cd ..
    git clone https://github.com/jackersson/deep-learning-in-scale-workshop.git
    cd deep-learning-in-scale-workshop
    make install
    
    source venv/bin/activate
    ln -s /usr/lib/python3/dist-packages/gi  venv/lib/python3.6/site-packages
