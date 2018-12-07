function [Incident,RS,RP,TS,TP] = MultiLayerFilm(n,d,Incident,Lambda)
BOUNDRY = length(n)-1;
INC=Incident;
for INCIDENCE=Incident
%% Calculation of angles on boundries starting from first
Theta=SnellsLaw(n,INCIDENCE);
%% 
Phi(2:BOUNDRY) = n(2:BOUNDRY).*d(1:BOUNDRY-1).*(2.*pi./(Lambda));
Z_s = (2.6544e-3).*n(1:BOUNDRY+1).*cosd(Theta(1:BOUNDRY+1));
Z_p = (2.6544e-3).*n(1:BOUNDRY+1)./cosd(Theta(1:BOUNDRY+1));
m1=Matrix(Phi,Z_s);
[R_s(INCIDENCE+1),T_s(INCIDENCE+1)]=R_T(m1,Z_s(1),Z_s(BOUNDRY+1));
m2=Matrix(Phi,Z_p);
[R_p(INCIDENCE+1),T_p(INCIDENCE+1)]=R_T(m2,Z_p(1),Z_p(BOUNDRY+1));
end
RS=R_s;,RP=R_p;,TS=T_s;,TP=T_p;
rtplot(Incident,R_s,R_p,T_s,T_p);
end
