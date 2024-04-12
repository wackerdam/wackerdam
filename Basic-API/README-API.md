# Image Retrieval and Display with Python

This folder contains Python code demonstrating the use of the `requests` and `Pillow` (PIL Fork) libraries for retrieving images from URLs and displaying them.

## Requirements

* **requests:** For making HTTP requests.  Install with `pip install requests`.
* **Pillow:** For image processing.  Install with `pip install Pillow`.

## Usage

```python
from api_image_request import show_image_from_url

image_url = "[https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png](https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png)" 
show_image_from_url(image_url) 