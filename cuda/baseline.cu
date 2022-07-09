#include <cuda_runtime.h>


__global__ void Convolution(float* kernel, float* im, float*dst, 
                        int width, int height, int inChannel,
                        int kernelH, int kernelW, int outChannel, 
                        int stride, int padd)
{
    // to do
}

int main()
{
    int width = 256, height = 256, channels = 3, kernelsize = 3, 
                    stride = 1, outChannel = 256, int padd = 0,
                    kernelH = kernelsize, kernelW = kernelsize;

    float *im = new float[height * width * channels];

    for (int ch = 0; ch < channels; ch++)
    {
        for (int row = 0; row < height; row++)
        {
            for (int col = 0; col < width; col++)
            {
                im[ch * height * width + row * width + col] = (row * width + col);
            }
        }
    }

    float *kernel = new float[outChannel * kernelH * kernelW];
    for(int ch = 0;ch<outChannel;ch++)
    {
        int dst = ch + 1;
        float* src0 = kernel + ch*kernelH*kernelW;
        for(int i = 0;i<kernelH*kernelW;i++)
        {
            src0[i] = dst;
        }
    }

    // To do
    // timing
    // Convolution func
    // timing

    return 0;
}