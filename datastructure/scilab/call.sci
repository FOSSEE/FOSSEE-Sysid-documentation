  u = idinput(1024,'PRBS',[0 1/20],[-1 1])
  a = [1 0.5];b = [0 2 3];
  model = idpoly(a,b,'Ts',0.1)
  y = sim(u,model) + rand(length(u),1)
  plantData = iddata(y,u,0.1)
  sys = armaX(plantData,[2,2,1])
