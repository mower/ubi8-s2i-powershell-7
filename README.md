# ubi8-s2i-powershell-7

## Overview

[![License](https://img.shields.io/github/license/openshift/source-to-image.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)

Source-to-Image (S2I) is a toolkit and workflow for building reproducible container images from source code. S2I produces
ready-to-run images by injecting source code into a container image and letting the container prepare that source code for execution. By creating self-assembling **builder images**, you can version and control your build environments exactly like you use container images to version your runtime environments.

For a deep dive on S2I you can view [this presentation](https://www.youtube.com/watch?v=flI6zx9wH6M).

Here I am trying to provide an image that can be used with powershell scripts

Want to try it right now?  Download the [latest release](https://github.com/openshift/source-to-image/releases/latest) and run:

	$ s2i build https://github.com/sclorg/django-ex centos/python-35-centos7 hello-python
