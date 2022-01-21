import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-4.2,0)--(4.2,0));
draw((0,-pi/2-0.2)--(0,pi/2+0.2));
//画刻度线
path y1=(0,-pi/2)--(0.1,-pi/2);
path y2=(0,pi/2)--(0.1,pi/2);
draw(y1, L="$-\frac{\pi}{2}$", align=W);
draw(y2, L="$\frac{\pi}{2}$", align=W);
//作atan图
path g=graph(atan, -4, 4);
draw(g);
//图例
pair legend=(2,pi/8);
label(L="$y=\tan^{-1}(x)$", position=legend);
