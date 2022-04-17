import cv2
import numpy as np

## resize
img = cv2.imread("Resources/lena.png")
print(img.shape)

imgResize = cv2.resize(img,(1000,1000))

imgCropped = img[100:200, 200:500]

cv2.imshow("Image", img)
# cv2.imshow("Resize Image", imgResize)
cv2.imshow("Cropped Image", imgCropped)

cv2.waitKey(0)