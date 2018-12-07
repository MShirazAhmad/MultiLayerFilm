function m = Matrix(Phi,Z)
Limit=length(Phi);
M1=[1 0;0 1];
for j=2:Limit
    M{j} = [cosd(Phi(j)) (1i*sind(Phi(j)))/Z(j) ; 1i*Z(j)*sind(Phi(j)) cosd(Phi(j))];
    M1=M1*M{j};
end
m=M1;
end
