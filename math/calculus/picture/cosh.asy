import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//画坐标轴
draw((-3,0)--(3,0));
draw((0,-1)--(0,4));
//刻度线
path y=(0,1)--(0.1,1);
draw(y, L="1", align=SW);
//作cosh图
path g=graph(cosh,-2,2);
draw(g);
//图例
pair legend=(2,1.5);
label(L="$y=\cosh(x)$",position=legend);
