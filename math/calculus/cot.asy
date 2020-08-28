import settings;
pdfviewer="evince";
outformat="pdf";

import graph;
unitsize(1cm);
//刻度线路径
path x1=(pi/2, 0)--(pi/2, 0.1);
path x2=(pi, 0)--(pi, 0.1);
//画坐标轴
draw((-0.5, 0)--(pi+0.5, 0));
draw((0, -4.5)--(0, 4.5));
//画刻度线
draw(x1, L="$\frac{\pi}{2}$", align=S);
draw(x2, L="$\pi$", align=S+W);
//作余切图
real cot(real x){
    return 1/tan(x);
}
path g=graph(cot,pi/2-atan(4),pi/2-atan(-4));
draw(g);
//作渐近线
draw((pi,-4)--(pi,4),p=dashed);
//作图例
pair legend=(pi/2,2);
label(L="$y=\cot(x)$", position=legend);
