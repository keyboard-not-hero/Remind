import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//刻度线路径
path y1=(0,1)--(0.1,1);
path y2=(0,-1)--(0.1,-1);
path x1=(-pi/2, 0)--(-pi/2, 0.1);
path x2=(pi/2, 0)--(pi/2, 0.1);
path x3=(pi, 0)--(pi, 0.1);
path x4=(3*pi/2, 0)--(3*pi/2, 0.1);
//画坐标轴
draw((-0.5-pi/2, 0)--(3*pi/2+0.5, 0));
draw((0, -4.5)--(0, 4.5));
//画刻度线
draw(y1, L="1", align=SW);
draw(y2, L="-1", align=W);
draw(x1, L="$-\frac{\pi}{2}$", align=SE);
draw(x2, L="$\frac{\pi}{2}$", align=SE);
draw(x3, L="$\pi$", align=S);
draw(x4, L="$\frac{3\pi}{2}$", align=SE);
//作正割图
real sec(real x){
    return 1/cos(x);
}
path g1=graph(sec, -acos(1/4), 0);
path g2=graph(sec, 0, acos(1/4));
path g3=graph(sec, acos(-1/4), pi);
path g4=graph(sec, pi, 2*pi-acos(-1/4));
draw(g1--g2);
draw(g3--g4);
//作渐近线
draw((-pi/2, -4)--(-pi/2, 4), p=dashed);
draw((pi/2, -4)--(pi/2, 4), p=dashed);
draw((3*pi/2, -4)--(3*pi/2, 4), p=dashed);
//作图例
pair legend=(pi,1);
label(L="$y=\sec(x)$", position=legend);
