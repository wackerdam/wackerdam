import requests
from PIL import Image
from io import BytesIO

def display_image_from_url(image_url):
    """Fetches an image from a URL and displays it.

    Args:
        image_url (str): The URL of the image to download.
    """

    response = requests.get(image_url)

    if response.status_code == 200:  # Check for successful retrieval
        image = Image.open(BytesIO(response.content))
        image.show()
    else:
        print(f"Failed to fetch image from {image_url}. Status code: {response.status_code}")

if __name__ == "__main__":  # Good practice for scripts
    image_url = input("Enter image URL: ")
    display_image_from_url(image_url)
