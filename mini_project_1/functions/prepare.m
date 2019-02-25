function imgs=prepare()

    clear all
    close all
    addpath('functions');
    addpath('imgs');
    
    t_imgs = directory_to_sequence('./imgs', 'jpg');
    
    %  Reduce to a single color
    imgs=cell(0);
    for img = t_imgs
        a = cell2mat(img);
        [n, k]=size(size(a));
        if(k >= 3)
            a=squeeze(a(:,:,1));
        end
        imgs{end+1} = a;
    end
end

