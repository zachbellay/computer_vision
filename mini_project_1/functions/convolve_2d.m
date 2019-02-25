function B = convolve_2d(A, k)
    
    B=zeros(size(A));

    k_center_x = floor(size(k,2)/2);
    k_center_y = floor(size(k,1)/2);

    for i = 1:size(A, 1)
        for j = 1:size(A, 2)
            for m = 1:size(k,1)
                mm = size(k,1)+1 - m;
                for n = 1:size(k,2)
                    nn = size(k,2)+1 - n;
                    
                    ii = i + (k_center_y - mm);
                    jj = j + (k_center_x - nn);
                    
                    if(ii >= 1 && ii <= size(A,1) && jj >= 1 && jj <= size(A,2))
                        first_part = A(ii,jj) * k(mm,nn);
                        B(i,j) = B(i,j) + first_part;                 
                    end
                end
            end     
        end
    end
end