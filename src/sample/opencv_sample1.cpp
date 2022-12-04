//#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

int main()
{
    cv::String source_path = "/workspace/3rdparty/opencv/doc/opencv-logo.png";
    cv::String dest_path = "/workspace/bin/out.png";

    cv::Mat source = cv::imread(source_path, cv::IMREAD_COLOR);
    cv::imwrite(dest_path, source);
}
