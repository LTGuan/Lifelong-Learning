import cv2

'''
https://www.youtube.com/watch?v=WQeoO7MI0Bs&t=2136s
LEARN OPENCV in 3 HOURS with Python | Including 3xProjects | Computer Vision
'''
# print("Package Imported")

## Show image
'''
img = cv2.imread("Resources/lena.png")
cv2.imshow("Output", img)
cv2.waitKey(0)
'''

## Show webcam
'''
cap = cv2.VideoCapture(0) #0: frist WebCAM
cap.set(3,640)
cap.set(4,480)
# cap.set(10,100)

while True:
    success, img = cap.read()
    cv2.imshow("Video", img)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
'''

