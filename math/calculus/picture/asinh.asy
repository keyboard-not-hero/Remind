import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//坐标轴
draw((-4,0)--(4,0));
draw((0,-2.5)--(0,2.5));
//作asinh图
path g=graph(asinh,-3.6,3.6);
draw(g);
//作图例
pair legend=(1,2);
label(L="$y=\sinh^{-1}(x)$",position=legend);
