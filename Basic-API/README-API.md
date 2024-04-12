README.md
Code for Requesting and Returning Images

This folder contains Python code for a function show_image_from_url(url) that fetches an image from a given URL, displays it using Pillow (PIL Fork), and handles potential errors.

Requirements:

requests library (pip install requests)
Pillow library (pip install Pillow)

Import the function:
    [Python]
    from api_image_request import show_image_from_url

Call the function with the desired image URL:
    [Python]
    image_url = "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
    show_image_from_url(image_url)

Explanation of the Code (api_image_request.py):

Lines 1-2: Import the necessary libraries, requests for making HTTP requests and from io import BytesIO to handle byte data efficiently.
Lines 4-5: Define the function show_image_from_url(url).
Line 6: Fetches the image from the provided URL using requests.get(url).
Lines 7-8: Check the response status code. If the request is successful (status code 200), proceed to display the image.
Lines 9-10: Open the image data as a BytesIO object and use Pillow to open the image.
Line 10: Display the image using image.show().
Lines 11-12: If the request fails, print an error message with the URL and status code.
Example Usage:

The included code snippet (api_image_request.py) demonstrates how to use the show_image_from_url(url) function with a sample URL.
