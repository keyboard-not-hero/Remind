import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-1,0)--(4,0));
draw((0,-1)--(0,2.1));
//刻度线
path x=(1,0)--(1,0.1);
draw(x, L="1", align=SW);
//作acosh图
path g=graph(acosh,1,3.6);
draw(g);
//图例
pair legend=(1.5,2);
label(L="$y=\cosh^{-1}(x)$",position=legend);
