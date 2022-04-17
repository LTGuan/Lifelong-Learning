#/usr/bin/python3
import cv2 as cv

def rescaleFrame(frame, scale=0.75):
    width = int(frame.shape[1]*scale)
    height = int(frame.shape[0]*scale)
    dimensions = (width,height)
    return cv.resize(frame, dimensions, interpolation=cv.INTER_AREA)

img = cv.imread('./Resources/Photos/cat_large.jpg')
cv.imshow('Cat', img)
cv.imshow('Cat_resized', rescaleFrame(img, scale=0.1))
# cv.waitKey(0)

#Reading Videos
capture = cv.VideoCapture('./Resources/Videos/dog.mp4')
while True:
    isTrue, frame = capture.read()

    frame_resized = rescaleFrame(frame)

    cv.imshow('Video', frame)
    cv.imshow('Video_resized', frame_resized)
    if cv.waitKey(20) & 0xff == ord('d'):
        break

capture.release()
cv.destroyAllWindows()
