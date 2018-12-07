function Output = rtplot(Incident,R_s,R_p,T_s,T_p)
Incident=Incident+1;
plot(Incident,T_s,'r');
hold on
plot(Incident,R_s,'r');
hold on
plot(Incident,T_p,'b');
plot(Incident,abs(R_p),'b');
hold off
%[K,I] = min(R_p);
%X_b=I.*(ones(1,length(Incident)));
%plot(X_b,R_p,'--');
end