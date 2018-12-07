function [R,T] = R_T(m,Z_o,Z_s)
r=(Z_o*m(1,1)+Z_o*Z_s*m(1,2)-m(2,1)-Z_s*m(2,2))/...
            (Z_o*m(1,1)+Z_o*Z_s*m(1,2)+m(2,1)+Z_s*m(2,2));
t=(2*Z_o)/...
            (Z_o*m(1,1)+Z_o*Z_s*m(1,2)+m(2,1)+Z_s*m(2,2));
T=abs(t.*t');
R=abs(r.*r');
end