function ret = erode(c)
% Help from:
% https://www.mathworks.com/matlabcentral/answers/271598-code-for-performing-erosion-and-dilation-without-using-builtin-functions-like-imdilate-or-imerode

%Structuring element
    B=[1 1 0];
    %Pad array with ones on both sides
    C=padarray(c,[0 1],1);
    %Intialize the matrix D of size A with zeros
    D=false(size(c));
    for i=1:size(C,1)
        for j=1:size(C,2)-2
            L=C(i,j:j+2);
     %Find the position of ones in the structuring element
            K=find(B==1);
           if(L(K)==1)
            D(i,j)=1;
            end
        end
    end
    ret = D;
end