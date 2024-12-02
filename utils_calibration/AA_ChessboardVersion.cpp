// g++ utils_calibration/AA_GettingParameters.cpp -o utils_calibration/AA_GettingParameters `pkg-config --cflags --libs opencv4`
// ./utils_calibration/AA_GettingParameters

#include <iostream>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/core.hpp>

using namespace std;
using namespace cv;

int main (int argc, char **argv) {

    (void)argc;
    (void)argv;

    // Path of the images (chessboard)
    vector<String> fileNames;
    glob("RUTA DE LAS IMAGENES CUANDO LAS TENGAS", fileNames, false);

    // Dimensions of the chessboard
    const Size chessBoardPatternSize(12, 12); // MEDIDAS DEL TABLERO CUANDO LAS TENGAS
    const int chessboardDim[2] = {12,12}; // MEDIDAS DEL TABLERO CUANDO LAS TENGAS
    const int fieldSize = 15; // MEDIDAS DEL TABLERO CUANDO LAS TENGAS E.G: 15x15mm

    // Defining the world coordinates for 3D points
    vector<Point3f> objPoints;
    for (int i = 1; i < chessboardDim[1]; i++)
        for (int j = 1; j < chessboardDim[2]; j++)
            objPoints.push_back(Point3f(j*fieldSize, i*fieldSize, 0));

    ///////////////////////////////////////////////////////////////////////////
    // 1. Dectecting feature 
    
    // Stores the 2D detected corners of the chessboard
    vector<vector<Point2f>> image2Dpoints(fileNames.size());
    
    // Stores the 3D points of the chessboard in the real world
    vector<vector<Point3f>> realWorldPoints;

    // We use these points to make a comparison between them in order to define
    // how the camera proyects the 3D points of the real world in the 2D image
    // so we can obtain later the calibration parameters
    
    vector<Point2f> imgPoint;
    size_t i = 0;

    for (auto const &file : fileNames) {
        cout << string(file) << endl;

        /////////////////////////////////////////////////////////////
        // 1.1 Process the image in order to find the chessboard corners
        Mat img = imread(fileNames[i]);
        Mat gray;

        // Convert it to a grayScale image in order to make it simple
        cvtColor(img, gray, COLOR_RGB2GRAY);

        int defaultParam = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE + CALIB_CB_FAST_CHECK;
        
        /*
         * This function finds the pattern in the image "gray"
         * knowing the Size of the chessboard
         * storing the points in "image2Dpoints"
         */
        bool found = findChessboardCorners(gray, chessBoardPatternSize, image2Dpoints[i], defaultParam);

        /////////////////////////////////////////////////////////////
        // 1.2 Refining the corners detected to get accuracy
        if (found) {

            /*
            * This function refines the points found in the image "gray"
            * stored in "image2Dpoints"
            */
            cornerSubPix(gray, image2Dpoints[i], Size(11,11), Size(-1,-1), TermCriteria(TermCriteria::EPS + TermCriteria::MAX_ITER, 30, 0.1));
            realWorldPoints.push_back(objPoints);
        }
        
        /////////////////////////////////////////////////////////////
        // 1.3 Display
        
        drawChessboardCorners(img, chessBoardPatternSize, image2Dpoints[i], found);
        imshow("Chessboard detection of the image ", img);
        waitKey(0);

        i++;
    }

    ///////////////////////////////////////////////////////////////////////////
    // 2. Getting Intrinsic Matrix and Distorsion coeficients

    Matx33f intrinsicMatrix(Matx33f::eye());
    Vec<float, 5> distortionCoef(0,0,0,0,0);
    vector<Mat> rotationVect, translationVect;

    int flags = CALIB_FIX_ASPECT_RATIO + CALIB_FIX_K3 + CALIB_ZERO_TANGENT_DIST + CALIB_FIX_PRINCIPAL_POINT;
    Mat img = imread(fileNames[0]);  // Read the first image to detect the size
    Size frameSize(img.cols, img.rows);

    cout << "Starting calibration process..." << endl;

    /////////////////////////////////////////////////////////////
    // 2.1 Error, intrinsic matrix and distorsion coefficients

    float error = calibrateCamera(realWorldPoints, image2Dpoints, frameSize,
                                  intrinsicMatrix, distortionCoef, rotationVect,
                                  translationVect, flags);

    cout << "Error: " << error << endl;
    cout << "Intrinsic Matrix: " << endl << intrinsicMatrix << endl;
    cout << "Distorsion Coefficients: " << endl << distortionCoef << endl;
    cout << "Rotation Vector:" << endl;
    for (auto const &x:rotationVect) cout << x;
    cout << endl;
    cout << "Translation Vector:" << endl;
    for (auto const &x:translationVect) cout << x;
    cout << endl;

    ///////////////////////////////////////////////////////////////////////////
    // 3. Correcting the images to test the accuracy of the calibration

    /////////////////////////////////////////////////////////////
    // 3.1 Getting the fixed position of every pixel
    
    Mat mapX, mapY;
    initUndistortRectifyMap(intrinsicMatrix, distortionCoef, Matx33f::eye(),
                            intrinsicMatrix, frameSize, CV_32FC1, mapX, mapY);

    /*
    * mapX and mapY are the matrix that contain the fixed position of every
    * pixel of the image to correct the distorsion
    * 
    * e.g. if the value of mapX[100, 50] = 98 and mapY[100, 50] = 49, 
    * the pixel in (100, 50) of the original image should be map into 
    * the position (98, 49)
    */

    /////////////////////////////////////////////////////////////
    // 3.2 Show corrected images

    for (auto const &file: fileNames) {

        cout << string(file) << endl;

        Mat img = imread(file, IMREAD_COLOR);
        Mat imgCorrected;

        // applying the transformation matrixes obtained previously
        remap(img, imgCorrected, mapX, mapY, INTER_LINEAR);

        imshow("Corrected image ", imgCorrected);
        waitKey(0);
    }

    return 0;
}