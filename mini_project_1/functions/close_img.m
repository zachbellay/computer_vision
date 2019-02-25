function ret = close_img(c)
    ret=erode(dilate(c));
end