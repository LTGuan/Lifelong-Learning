import cv2 as cv
import numpy as np

img = cv.imread('./Resources/Photos/cats.jpg')
cv.imshow('Cats', img)

#Averaging
average = cv.blur(img, (7,7))
cv.imshow('Average blur', average)

#Gaussian blur
gauss = cv.GaussianBlur(img,(7,7), 0)
cv.imshow('Gaussian blur', gauss)

#Median blur
median = cv.medianBlur(img, 3)
cv.imshow('Median blur', median)

#Bilateral
bilateral = cv.bilateralFilter(img, 5, 15, 15)
cv.imshow('Bilateral', bilateral)

cv.waitKey(0)