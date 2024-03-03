vs=10;
rs=10e3;
rl=0:1e3:50e3;
k=length(rl);
for i=1:k
    pl(i)=((vs/(rs+rl(i)))^2)*rl(i);
end
dp=diff(pl)./diff(rl);
rld=rl(2:length(rl));
prod=dp(1:length(dp)-1).*dp(2:length(dp));
crit_pt=rld(find(prod<0));
max_power=max(pl);
plot(rl,pl)