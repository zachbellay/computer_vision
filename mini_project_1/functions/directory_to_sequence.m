% Note: Make sure Dataset and all subfolders are added to Matlab path
function [sequence] = directory_to_sequence(directory, img_format)
% directory_to_sequence - Takes all files in directory and converts them into a matlab matrix
%
% Precondition:
%       Files in directory must all be the same size
%
% Inputs:
%       directory: Relative path to directory
%			e.g. Current Path: C:\Users\zachb\Documents\GitHub\seniordesign
%			     Relative Path: .\Dataset\processed_faces\s07\
%			Current path is your current Matlab workspace, and relative path is the path needed to get to the 
%			directory you want
%		img_format: string of file format
%			e.g. bmp, jpg, tiff
% Outputs:
%		sequence: Matrix of size width x height x num color components x number of frames
%			num color components - if RGB, then 3. If grayscale, then 1, etc.
%

    % do type checking of img_format
    if(~strcmp(img_format, 'tiff') && ~strcmp(img_format, 'bmp') && ~strcmp(img_format, 'jpg'))
        error_msg = strcat('Image format: ', img_format, ' not recognized.');
        error(error_msg);
    end
    
    
    img_expr = strcat('*.', img_format);
    training_imgs = dir(fullfile(pwd, directory, img_expr));
    num_imgs=length(training_imgs)
    seq_temp=cell(0);

    for img = training_imgs'
        iter_img = imread(fullfile(img.folder,img.name));
        iter_img = im2double(iter_img);
        seq_temp{end+1} = iter_img;
%         seq_temp = cat(4, seq_temp, iter_img);
    end
    sequence = seq_temp;
end