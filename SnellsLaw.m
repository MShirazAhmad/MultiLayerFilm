function angles = SnellsLaw(n, incident)
Theta=zeros(1,length(n));
Theta(1)=incident;
for j=2:length(n)
    Theta(j) = asind((n(j-1)/n(j))*sind(Theta(j-1)));
end
angles=Theta;
end