# Digital_Image_Watermarking
Basic image watermarking technique using MATLAB
The code loads an original image and a watermark image. The watermark image is resized to match the size of the original image. The images are converted to double precision. The strength of the watermark (between 0 and 1) is defined. The watermark embedding is performed by adding the scaled watermark to the original image. The watermarked image is displayed and saved.
Next, the code extracts the watermark from the watermarked image by subtracting the original image from the watermarked image and dividing by the strength. The extracted watermark is displayed and saved.
