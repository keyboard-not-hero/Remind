import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-4.2,0)--(4.2,0));
draw((0,-0.2)--(0,pi+0.2));
//画刻度线
path y1=(0,pi/2)--(0.1,pi/2);
path y2=(0,pi)--(0.1,pi);
draw(y1, L="$\frac{\pi}{2}$", align=W);
draw(y2, L="$\pi$", align=W);
//作acot图
real cot(real x){
	return 1/tan(x);
}
guide g1=graph(cot, pi/2-atan(4), pi/2+atan(4));
guide g2=reflect((0,0),(1,1))*g1;
draw(g2);
//图例
pair legend=(2,pi/2);
label(L="$y=\cot^{-1}(x)$", position=legend);
