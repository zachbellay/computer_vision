function display_imgs(prefix,imgs) 
    clear title;
    img_titles={'Apple', 'Eye', 'Street', 'Curves', 'Geometry', 'Rock'};
    
    count=1;
    
    for img = imgs
        img=cell2mat(img);
        subplot(2,3,count);
        imshow(img);
        img_name=img_titles{count};
%         t=strcat(prefix,' ',img_name);
        title(img_name);
        count=count+1;
    end
    mtit(prefix);
end

