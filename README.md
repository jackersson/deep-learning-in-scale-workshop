### deep-learning-in-scale-workshop
#### Goal
- Discover approach to inject Computer Vision algorithm in Video Streaming pipeline. 

#### Real-world application
- Safe city program in Vinnytsia, Ukraine

#### Requirements
- Gstreamer (>=1.14)
- Tensorflow (>=1.10)
- OpenCV (>= 3.4)
- Ubuntu (18.04)
- Python (>=3.5)

#### Installation
    make setup
    source venv/bin/activate

##### Fetching repositories
    ./fetch_repositories.sh
    
##### Fetching data/videos
    TODO

### Guide
#### How to inject python plugin in Gstreamer Pipeline?       
- [code](https://github.com/jackersson/gst-python-plugins)

      ./workshop/gst_python_plugin_template.sh
      
#### How to implement simple blur filter with python plugin in Gstreamer pipeline?
- [code](https://github.com/jackersson/gst-python-plugins)

      ./workshop/gst_python_blur_plugin.sh
     
#### How to implement python plugin with Tensorflow model in Gstreamer pipeline?
- [code](https://github.com/jackersson/gst-plugins-tf)

      ./workshop/gst_tf_detection_to_console.sh
      
#### How to implement python plugin to draw on image buffer in Gstreamer pipeline?
- [code](https://github.com/jackersson/gst-plugins-tf)

      ./workshop/gst_tf_detection_overlay.sh
      
#### How to process multiple video sources with Tensorflow Model?
- [code](https://github.com/jackersson/gst-video-surveillance)

      ./workshop/gst_tf_detection_multi.sh
      
#### How to launch Gstreamer Pipeline with python plugin with Shared Tensorflow Model? 
- [code](https://github.com/jackersson/gst-video-surveillance)

      ./workshop/gst_video_surv.sh

#### How to implement batch forward pass for multiple video streams
- [code](https://github.com/jackersson/gst-video-surveillance)

      ./workshop/gst_video_surv_batch.sh



