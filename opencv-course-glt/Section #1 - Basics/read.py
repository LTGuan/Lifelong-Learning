#/usr/bin/python3
# import os
import cv2 as cv

# abspath = os.getcwd()
# img = cv.imread(abspath + '/Resources/Photos/cat_large.jpg')
# img = cv.imread('./Resources/Photos/cat_large.jpg')
# cv.imshow('Cat', img)
# cv.waitKey(0)

#Reading Videos
capture = cv.VideoCapture('./Resources/Videos/dog.mp4')
while True:
    isTrue, frame = capture.read()
    cv.imshow('Video', frame)
    if cv.waitKey(20) & 0xff == ord('d'):
        break

capture.release()
cv.destroyAllWindows()


