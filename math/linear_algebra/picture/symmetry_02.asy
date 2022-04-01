import settings;
outformat="pdf";
pdfviewer="evince";

import patterns;
import graph;
unitsize(1cm);
// 坐标轴与圆
xaxis("$x_1$", xmin=-2, xmax=2, arrow=EndArrow);
yaxis("$x_2$", ymin=-1, ymax=2, arrow=EndArrow);


// 坐标
dot((-1,0)^^(0,1));
Label x=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    -1\\
    0
\end{array}\right]$", p=fontsize(5pt));

Label y=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    0\\
    1
\end{array}\right]$", p=fontsize(5pt));

label(x, position=(-1,0), align=2S);
label(y, position=(0,1), align=2N+1.5W);


// 对称内容
add("hatch_s", hatch(H=1mm, dir=(1, 0.6)));
filldraw(box((0,0),(1,1)), fillpen=pattern("hatch_s"), drawpen=linetype(new real[]{4,4}));

add("hatch_t", hatch(H=1mm, dir=reflect((0,0),(0,1))*(1, 0.6)));
filldraw(reflect((0,0),(0,1))*box((0,0),(1,1)), pattern("hatch_t"));

draw(arc((0,-1), 1.5, 70, 110), arrow=EndArcArrow(size=3, filltype=FillDraw(fillpen=white)), p=RGB(100,100,100));

