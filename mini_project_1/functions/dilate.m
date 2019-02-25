function ret = dilate(c)
% https://www.mathworks.com/matlabcentral/answers/271598-code-for-performing-erosion-and-dilation-without-using-builtin-functions-like-imdilate-or-imerode
    B=[1 1 1 1 1 1 1;];
    C=padarray(c,[0 3]);
    D=false(size(c));
    for i=1:size(C,1)
        for j=1:size(C,2)-6
            D(i,j)=sum(B&C(i,j:j+6));
        end
    end
    ret = D;
end

