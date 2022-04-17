import cv2
import numpy as np
# print("Package Imported")

## Show image - Gray,
img = cv2.imread("Resources/lena.png")
kernel = np.ones((5,5), np.uint8)

imgGray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
imgBlur = cv2.GaussianBlur(imgGray, (7,7),0)
imgCanny = cv2.Canny(img, 150,200)
imgDilation = cv2.dilate(imgCanny, kernel, iterations=1)
imgEroded = cv2.erode(imgDilation, kernel, iterations=1)

cv2.imshow("Gray Image", imgGray)               #灰度图
cv2.imshow("Blur Image", imgBlur)               #模糊
cv2.imshow("Canny Image", imgCanny)             #精锐
cv2.imshow("Dilation Image", imgDilation)       #扩张
cv2.imshow("Eroded Image", imgEroded)           #侵蚀
cv2.waitKey(0)