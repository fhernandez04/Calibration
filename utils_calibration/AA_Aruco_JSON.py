import argparse
import AAA_calibration_module

parser = argparse.ArgumentParser(description="Calibration with aruco markers")
parser.add_argument("path_to_images", type=str, help="Path to images")
parser.add_argument("output_json", type=str, help="Name of output json file")
parser.add_argument("marker_length", type=float, help="Marker length in meters")

args = parser.parse_args()

AAA_calibration_module.calibrate_camera(args.path_to_images, args.output_json, args.marker_length)
