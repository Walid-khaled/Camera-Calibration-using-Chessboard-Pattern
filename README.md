## Camera-Calibration-using-Chessboard-Pattern
In this repository, camera calibration is implemented using  MATLAB Camera Calibrator APP. It is apart of Assignment2 in Sensing, Perception and Actuation course for ROCV master's program at Innopolis University.

---
### Task description
Calibrate a camera (e.g., your phone) using the chessboard pattern. It’s logical to switch off the auto focus mode of the camera, if it is enabled. The number of images should be at least 30 (with different chessboard positions). Obtain the intrinsic and extrinsic parameters. Once you have calibrated your camera, store intrinsic and extrinsic parameters. Then take a photo of some object (for example, a cup) using the calibrated camera, estimate the height and width of the selected object using both a ruler and an image from the calibrated camera. Calculate the distance between the camera image plane and the selected object, if possible.

---
### Table of Content 
```
├── src                           <- directory for source files
|    ├── Camera_Calibration.m     <- contains intrinsic and extrinsic parameters (to be run first)
|    ├── main.m                   <- contains main script
|    ├── readPoints.m             <- contains reading manually-defined points from image
|    ├── CalibrationSession.mat   <- contains CalibrationSession from MATLAB Camera Calibrator APP
|
├── dataset                       <- contains 30 images of chessboard for calibration 
├── Report.pdf                        
└── Readme.md
```
<p align="center"><img src="https://user-images.githubusercontent.com/90580636/146696031-4877726b-e362-4e05-a0bf-ffbd7ce4dad8.png" /></p>
<p align="center">Camera Calibrator APP</p>

**HINT: Move the images to same directory for the m files and change copy that directory to the code.
