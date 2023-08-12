I = imread('TPDI\Lenna_(test_image).png');
[TR, TC] = size(I);
I_Original=I;
fprintf('Binarizando la imagen\n')
ttau(1)=(max(I(:))+min(I(:)))/2;
difer=1;
TOL=1e-5;
kk=1;
while difer>TOL
    pp=1;
    qq=1;
    for ii=1:TR
        for jj=1:TC
            if I(ii,jj)<ttau(kk)
                A1(pp)=I(ii,jj);
                pp=pp+1;
            else
                A2(qq)=I(ii,jj);
                qq=qq+1;
            end
        end
    end
    mu1=(max(A1)+min(A1))/2;
    mu2=(max(A2)+min(A2))/2;
    kk=kk+1;
    ttau(kk)=(mu1+mu2)/2;
    difer=abs(ttau(kk-1)-ttau(kk));
end
level=ttau(end);
BW=I<level;
BW=double(BW);