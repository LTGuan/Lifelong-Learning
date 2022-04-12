import cv2 as cv

# img = cv.imread('./opencv-course-glt/Resources/Photos/lady.jpg')
img = cv.imread('./opencv-course-glt/Resources/Photos/group 2.jpg')
cv.imshow('Persor', img)

gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.imshow('Gray person', gray)

haar_cascade = cv.CascadeClassifier(cv.data.haarcascades + 'haarcascade_frontalface_default.xml')
faces_rect = haar_cascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5)

print(f'Number of faces found = {len(faces_rect)}')

for (x,y,w,h) in faces_rect:
    cv.rectangle(img, (x,y), (x+w, y+h), (0,255,0), thickness=2)

cv.imshow('Detected faces', img)


cv.waitKey(0)