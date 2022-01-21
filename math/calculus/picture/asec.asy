import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-4.2,0)--(4.2,0));
draw((0,-0.2)--(0,pi+0.2));
//画刻度线
path x1=(-1,0)--(-1,0.1);
path x2=(1,0)--(1,0.1);
path y1=(0,pi/2)--(0.1,pi/2);
path y2=(0,pi)--(0.1,pi);
draw(x1, L="$-1$", align=S);
draw(x2, L="$1$", align=S);
draw(y1, L="$\frac{\pi}{2}$", align=SW);
draw(y2, L="$\pi$", align=W);
//作asec图
real sec(real x){
	return 1/cos(x);
}
guide g1=graph(sec, 0, acos(1/4));
guide g2=graph(sec, acos(-1/4), pi);
guide g3=reflect((0,0),(1,1))*g1;
guide g4=reflect((0,0),(1,1))*g2;
draw(g3);
draw(g4);
//作渐近线
draw((-4,pi/2)--(4,pi/2),p=dashed);
//图例
pair legend=(1.2, 5*pi/8);
label(L="$y=\sec^{-1}(x)$",position=legend);
