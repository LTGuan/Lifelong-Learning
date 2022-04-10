#/usr/bin/python3
import cv2 as cv
import numpy as np

blank = np.zeros((500,500,3), dtype='uint8')
cv.imshow('Blank', blank)

# blank[:] = 0,255,0
# blank[200:300, 300:400] = 0,255,0
# cv.imshow('Green', blank)

# img = cv.imread('./opencv-course-glt/Resources/Photos/cat.jpg')
# cv.imshow('Cat', img)

# cv.rectangle(blank, (0,0),(250,250),(0,255,0),thickness=2)
# cv.rectangle(blank, (0,0),(250,250),(0,255,0),thickness=cv.FILLED)
cv.rectangle(blank, (0,0),(250,250),(0,255,0),thickness=-1)
cv.imshow('Rectangle',blank)

cv.circle(blank, (blank.shape[1]//2, blank.shape[0]//2), 40, (0,0,255), thickness=1)
cv.imshow('Circle',blank)

cv.line(blank, (blank.shape[1]//2, blank.shape[0]//2), (0,0), (255,255,255), thickness=3)
cv.imshow('Line',blank)

cv.putText(blank,'Hello', (0,255), cv.FONT_HERSHEY_TRIPLEX, 1.0, (0,255,0), 2)
cv.imshow('Text', blank)

cv.waitKey(0)
