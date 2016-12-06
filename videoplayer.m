%---------------------------------------------------
% author    : HAN FEILIN
% title     : Convert person detected frames to avi video
% date      : 2014.12.14
%---------------------------------------------------
%name the video
aviobj = avifile('Cam06_detected.avi');
%set the quality of video
aviobj.Quality = 100;
%set the frame rate of video
aviobj.Fps = 24;
%no compression
aviobj.compression='None';
%start the loop of reading frames and add frames
 for i=1:1621%change it to the NumberOfFrames
    %A=['D:\Re-identification\person-detection-hfl\Cam03\frame_detected\frame-',num2str(i),'.jpg'];
    B=imread(['D:\Re-identification\person-detection-hfl\Cam06\frame_detected\frame-',num2str(i),'.jpg']);
    fname = imresize(B,0.5);
    %adata=imread(fname);
    aviobj = addframe(aviobj,uint8(fname));
 end
%close the video stream
aviobj=close(aviobj);
