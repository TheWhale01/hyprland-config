from PIL import Image
import sys
import os

def crop_to_centered_square(input_image_path, output_image_path):
    # Open the image file
    with Image.open(input_image_path) as img:
        # Get the dimensions of the image
        width, height = img.size

        # Determine the size of the square crop
        size = min(width, height)

        # Calculate the coordinates for the crop box
        left = (width - size) / 2
        upper = (height - size) / 2
        right = (width + size) / 2
        lower = (height + size) / 2

        # Crop the image
        cropped_img = img.crop((left, upper, right, lower))

        # Save the cropped image
        cropped_img.save(output_image_path)

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Error: Could not determine filename\nUsage: python3 crop.py {image}.jpg", file=sys.stderr)
        exit()
    input_image_path = sys.argv[1]
    output_image_path = f'{os.getenv("HOME")}/.config/hypr/assets/wall.sqre.jpg'
    crop_to_centered_square(input_image_path, output_image_path)
