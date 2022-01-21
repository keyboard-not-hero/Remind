import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//坐标轴
draw((-3,0)--(3,0));
draw((0,-4)--(0,4));
//作sinh图
path g=graph(sinh,-2,2);
draw(g);
//作图例
pair legend=(2,1);
label(L="$y=\sinh(x)$",position=legend);
