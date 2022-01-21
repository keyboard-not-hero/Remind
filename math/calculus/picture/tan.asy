import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-0.5-3*pi/2, 0)--(3*pi/2+0.5, 0));
draw((0, -4.5)--(0, 4.5));
//刻度线路径
path x1=(-3*pi/2, 0)--(-3*pi/2, 0.1);
path x2=(-pi/2, 0)--(-pi/2, 0.1);
path x3=(pi/2,0)--(pi/2,0.1);
path x4=(3*pi/2, 0)--(3*pi/2, 0.1);
//画刻度线
draw(x1, L="$-\frac{3\pi}{2}$", align=S+E);
draw(x2, L="$-\frac{\pi}{2}$", align=S+E);
draw(x3, L="$\frac{\pi}{2}$", align=S+E);
draw(x4, L="$\frac{3\pi}{2}$", align=S+E);
//作正切图
path g1=graph(tan,atan(-4)-pi,atan(4)-pi);
draw(g1);
path g2=graph(tan,atan(-4),atan(4));
draw(g2);
path g3=graph(tan,atan(-4)+pi,atan(4)+pi);
draw(g3);
//作渐近线
draw((-3*pi/2,-4)--(-3*pi/2,4),p=dashed);
draw((-pi/2,-4)--(-pi/2,4),p=dashed);
draw((pi/2,-4)--(pi/2,4),p=dashed);
draw((3*pi/2,-4)--(3*pi/2,4),p=dashed);
//作图例
pair legend=(0,-2);
label(L="$y=\tan(x)$", position=legend);
