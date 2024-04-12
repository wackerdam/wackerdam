import requests
from PIL import Image
from io import BytesIO

def show_image_from_url(url):
    response = requests.get(url)
    
    if response.status_code == 200:
        image = Image.open(BytesIO(response.content))
        image.show()
    else:
        print(f"Failed to fetch image from {url}. Status code: {response.status_code}")

imageurl = input("Enter image url: ")
show_image_from_url(imageurl)