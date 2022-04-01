import settings;
outformat="pdf";
pdfviewer="evince";

import patterns;
import graph;
unitsize(1cm);
// 坐标轴
xaxis("$x_1$", xmin=-1, xmax=2, arrow=EndArrow);
yaxis("$x_2$", ymin=-1, ymax=2.5, arrow=EndArrow);


// 坐标
dot((1,0.5)^^(0,1));
Label x=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    1\\
    k
\end{array}\right]$", p=fontsize(5pt));

Label y=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    0\\
    1
\end{array}\right]$", p=fontsize(5pt));

label(x, position=(1,0.5), align=2E);
label(y, position=(0,1), align=1.5W);


// 倾斜内容
add("hatch", hatch(H=1mm, dir=(0.6, 1)));
filldraw(reflect((0,0),(1,1))*slant(0.5)*box((0,0),(1,1)), fillpen=pattern("hatch"));

draw((0.25, -0.5) -- (0.25, 0.1), arrow=EndArcArrow(size=3, filltype=FillDraw(fillpen=white)), p=RGB(100,100,100));

draw((0.75, -0.3) -- (0.75, 0.3), arrow=EndArcArrow(size=3, filltype=FillDraw(fillpen=white)), p=RGB(100,100,100));

Label l=Label("$k$", position=BeginPoint, p=fontsize(5pt));
draw(l, (0, 0.5)--(1, 0.5), p=linetype(new real[]{4,4}), align=W);
