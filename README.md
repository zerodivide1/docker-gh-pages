# Github pages docker image

This is a `simple` docker image for running the github pages stuff on a Raspberry Pi (jekyll) in order to speed up gh-pages development

## Usage

Go to your app root and run:

```
docker run --rm -ti -v $(pwd):/app -p 80:4000 zerodivide1/rpi-docker-gh-pages
```

You can now live edit your files locally, push them to your Pi and watch [pi:80](http://pi:80)

## Building

To build the image, you must run the build from the Pi (since there is an ARM CPU requirement):

1. Clone the Dockerfile onto your Pi:
```
git clone https://github.com/zerodivide1/rpi-docker-gh-pages.git
```
2. Build the image (do not remove intermediary images in case it fails)
```
cd rpi-docker-gh-pages
docker build --rm=false -t rpi-docker-gh-pages .
```

_Note_: Build may take some time & may fail on the Pi. Keep retrying.

# Feedback

Please post an issue on the issuetracker!
