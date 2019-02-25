% function filtered_img = gaussian_filter(img, sigma)
function f=gaussian_kernel(N,sigma)
  % N is grid size, sigma speaks for itself
    [x y]=meshgrid(round(-N/2):round(N/2), round(-N/2):round(N/2));
%     [x, y] = meshgrid(-(N-1)/2:(N-1)/2, -(N-1)/2:(N-1)/2);
    f=exp(-x.^2/(2*sigma^2)-y.^2/(2*sigma^2));
    f=f./sum(f(:));
%     coef = 1/(sigma * sqrt(2*pi));
%     
% %     [x,y]=size(img);
% %     new_img=zeros(x,y);
%     
%     k=[2 4 5 4 2;
%        4 9 12 9 4;
%        5 12 15 12 5;
%        4 9 12 9 4;
%        2 4 5 4 2];
% 
%     m = 5; n = 5;
%     sigma = 1;
%     [h1, h2] = meshgrid(-(m-1)/2:(m-1)/2, -(n-1)/2:(n-1)/2);
%     [x, y] = meshgrid(-(N-1)/2:(N-1)/2, -(N-1)/2:(N-1)/2);
%     hg = exp(- (h1.^2+h2.^2) / (2*sigma^2));
%     h = hg ./ sum(hg(:));
%    
%     img=convolve_2d();
    
    
end

