import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-2*pi-0.5, 0)--(2*pi+0.5, 0));
draw((0, -1.5)--(0, 1.5));
//刻度线路径
path y_sup=(0, 1)--(0.1, 1);
path y_sub=(0, -1)--(0.1, -1);
path x1=(-2*pi, 0)--(-2*pi, 0.1);
path x2=(-3*pi/2, 0)--(-3*pi/2, 0.1);
path x3=(-pi, 0)--(-pi, 0.1);
path x4=(-pi/2, 0)--(-pi/2, 0.1);
path x5=(pi/2, 0)--(pi/2, 0.1);
path x6=(pi, 0)--(pi, 0.1);
path x7=(3*pi/2, 0)--(3*pi/2, 0.1);
path x8=(2*pi, 0)--(2*pi, 0.1);
//画刻度线
draw(y_sup, L="1", align=NW);
draw(y_sub, L="-1", align=W);
draw(x1, L="$-2\pi$", align=2S);
draw(x2, L="$-\frac{3\pi}{2}$", align=2S);
draw(x3, L="$-\pi$", align=2S);
draw(x4, L="$-\frac{\pi}{2}$", align=2S);
draw(x5, L="$\frac{\pi}{2}$", align=2S);
draw(x6, L="$\pi$", align=2S);
draw(x7, L="$\frac{3\pi}{2}$", align=2S);
draw(x8, L="$2\pi$", align=2S);
//作余弦图
path g=graph(cos,-2*pi,2*pi);
draw(g);
//作图例
pair legend=(3*pi/4,0.5);
label(L="$y=\cos(x)$", position=legend);
