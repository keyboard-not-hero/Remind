import settings;
import graph;
outformat="png";

size(20cm, 12cm, keepAspect=false);
defaultpen(linewidth(1bp)+fontsize(20pt));
real dt=.5;
real t=2;
real f(real t){return atan(t);};

path p1=graph(f, -15, 0);
path p2=graph(f, 0, 15);
path p3=shift(0, pi)*p1;
path p4=shift(0, pi)*p2;
path p5=shift(0, 2*pi)*p1;
// 坐标轴
draw("0",(-15-t,0) -- (15+t,0), arrow=ArcArrow(SimpleHead), align=SE);
draw((0,-pi/2-dt) -- (0,2*pi+dt), arrow=ArcArrow(SimpleHead));
// 辅助线
draw((-15-dt,pi/2) -- (15+dt,pi/2), p=linetype(new real[]{4,4}));
draw("$\pi$",(-15-dt,pi) -- (15+dt,pi), p=linetype(new real[]{4,4}),align=SE);
draw((-15-dt,3*pi/2) -- (15+dt,3*pi/2), p=linetype(new real[]{4,4}));
draw("$2\pi$",(-15-dt,2*pi) -- (15+dt,2*pi), p=linetype(new real[]{4,4}),align=NE);
// atan曲线
draw(p1);
draw(p2);
draw(p3, p=linetype(new real[]{8,8,1,8}));
draw(p4, p=linetype(new real[]{8,8,1,8}));
draw(p5, p=linetype(new real[]{8,8,1,8}));

