function C = euclidian_dist(A,B)

    if(~isequal(size(A), size(B)))
        error('Size of A and B not the same.');
    end

    C=zeros(size(A));

    A=A.^2;
    B=B.^2;
    C=A+B;
    C=C.^0.5;

end

