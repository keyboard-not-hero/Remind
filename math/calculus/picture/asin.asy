import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(2cm);
//画坐标轴
draw((-1.2,0)--(1.2,0));
draw((0,-pi/2-0.2)--(0,pi/2+0.2));
//画刻度线
path x1=(-1,0)--(-1,0.1);
path x2=(1,0)--(1,0.1);
path y1=(0,-pi/2)--(0.1,-pi/2);
path y2=(0,pi/2)--(0.1,pi/2);
draw(x1, L="-1", align=S);
draw(x2, L="1", align=S);
draw(y1, L="$-\frac{\pi}{2}$", align=W);
draw(y2, L="$\frac{\pi}{2}$", align=W);
//作asin图
path g=graph(asin,-1,1);
draw(g);
//图例
pair legend=(-0.5,pi/4);
label(L="$y=\sin^{-1}(x)$",position=legend);
