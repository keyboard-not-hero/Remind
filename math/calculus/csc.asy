import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//刻度线路径
path y1=(0,1)--(0.1,1);
path y2=(0,-1)--(0.1,-1);
path x1=(-pi, 0)--(-pi, 0.1);
path x2=(-pi/2, 0)--(-pi/2, 0.1);
path x3=(pi/2, 0)--(pi/2, 0.1);
path x4=(pi, 0)--(pi, 0.1);
//画坐标轴
draw((-pi-0.5, 0)--(pi+0.5, 0));
draw((0, -4.5)--(0, 4.5));
//画刻度线
draw(y1, L="1", align=W);
draw(y2, L="-1", align=W);
draw(x1, L="$-\pi$", align=SE);
draw(x2, L="$-\frac{\pi}{2}$", align=S);
draw(x3, L="$\frac{\pi}{2}$", align=S);
draw(x4, L="$\pi$", align=SE);
//作余割图
real csc(real x){
    return 1/sin(x);
}
path g1=graph(csc, asin(1/4), pi/2);
path g2=graph(csc, pi/2, pi-asin(1/4));
path g3=graph(csc, asin(-1/4), -pi/2);
path g4=graph(csc, -pi/2, -pi-asin(-1/4));
draw(g1--g2);
draw(g3--g4);
//作渐近线
draw((-pi, -4)--(-pi, 4), p=dashed);
draw((pi, -4)--(pi, 4), p=dashed);
//作图例
pair legend=(pi/2,-2);
label(L="$y=\csc(x)$", position=legend);
