 %read video and save every frame as .jpg

obj = VideoReader('actionclipautoautotrain00255.avi');
vid = read(obj);
fnum = obj.NumberOfFrames;

for i = 1:fnum
    imwrite(vid(:,:,:,i),strcat('D:\Fiona-files\matlab_2D_DFT_image_filtering\original-data\frame-',num2str(i),'.jpg'));
end