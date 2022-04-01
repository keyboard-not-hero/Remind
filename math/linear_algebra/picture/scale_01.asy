import settings;
outformat="pdf";
pdfviewer="evince";

import patterns;
import graph;
unitsize(1cm);
// 坐标轴
xaxis("$x_1$", xmin=-1, xmax=2.5, arrow=EndArrow);
yaxis("$x_2$", ymin=-1, ymax=2, arrow=EndArrow);


// 坐标
dot((1.5,0)^^(0,1));
Label x=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    k\\
    0
\end{array}\right]$", p=fontsize(5pt));

Label y=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    0\\
    1
\end{array}\right]$", p=fontsize(5pt));

label(x, position=(1.5,0), align=2S);
label(y, position=(0,1), align=1.5W);


// 拉伸内容
add("hatch", hatch(H=1mm, dir=(1, 0.6)));
filldraw(xscale(1.5)*box((0,0),(1,1)), fillpen=pattern("hatch"));

draw((0.3, 0.3) -- (1.2, 0.3), arrow=EndArcArrow(size=3, filltype=FillDraw(fillpen=white)), p=RGB(100,100,100));

draw((0.3, 0.7) -- (1.2, 0.7), arrow=EndArcArrow(size=3, filltype=FillDraw(fillpen=white)), p=RGB(100,100,100));
