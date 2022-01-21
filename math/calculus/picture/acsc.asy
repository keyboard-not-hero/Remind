import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//坐标轴
draw((-4.2,0)--(4.2,0));
draw((0,-pi/2-0.2)--(0,pi/2+0.2));
//刻度线
path x1=(-1,0)--(-1,0.1);
path x2=(1,0)--(1,0.1);
path y1=(0,-pi/2)--(0.1,-pi/2);
path y2=(0,pi/2)--(0.1,pi/2);
draw(x1, L="$-1$", align=S);
draw(x2, L="$1$", align=S);
draw(y1, L="$-\frac{\pi}{2}$", align=W);
draw(y2, L="$\frac{\pi}{2}$", align=W);
//作acsc图
real csc(real x){
	return 1/sin(x);
}
guide g1=graph(csc, asin(1/4), pi/2);
guide g2=graph(csc, -pi/2, asin(-1/4));
guide g3=reflect((0,0),(1,1))*g1;
guide g4=reflect((0,0),(1,1))*g2;
draw(g3);
draw(g4);
//图例
pair legend=(-2, pi/8);
label(L="$y=\csc^{-1}(x)$", position=legend);
