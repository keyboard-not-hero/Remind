import settings;
outformat="pdf";
pdfviewer="evince";

import graph;
unitsize(1cm);
// 坐标轴与圆
xaxis("$x_1$", xmin=-2, xmax=2, arrow=EndArrow);
yaxis("$x_2$", ymin=-2, ymax=2, arrow=EndArrow);
draw(unitcircle, p=dashed);


// 坐标
dot((1,0)^^(0,1));
Label x=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    1\\
    0
\end{array}\right]$", p=fontsize(5pt));

Label y=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    0\\
    1
\end{array}\right]$", p=fontsize(5pt));

label(x, position=(1,0), align=2S+E);
label(y, position=(0,1), align=2N+1.5E);


// 旋转后的内容
path start_line=(0,0) -- (1,0);
path end_line=(0,0) -- (0,1);
draw(rotate(20)*start_line, arrow=EndArrow(size=3pt));
draw(rotate(20)*end_line, arrow=EndArrow(size=3pt));
Label l1=Label("$\varphi$", position=MidPoint, align=2E, p=fontsize(1.5pt));
Label l2=Label("$\varphi$", position=MidPoint, align=3N, p=fontsize(1.5pt));
draw(l1, arc((0,0), 0.5, 0, 20), arrow=EndArrow(size=2pt));
draw(l2, arc((0,0), 0.5, 90, 110), arrow=EndArrow(size=2pt));
dot(rotate(20)*(1,0)^^rotate(20)*(0,1));
Label x_r=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    \cos\varphi\\
    \sin\varphi
\end{array}\right]$", p=fontsize(5pt));

Label y_r=Label("$\left[\begin{array}{@{\hspace{0.2mm}}r@{\hspace{0.2mm}}}
    -\sin\varphi\\
    \cos\varphi
\end{array}\right]$", p=fontsize(5pt));

label(x_r, position=rotate(20)*(1,0), align=E);
label(y_r, position=rotate(20)*(0,1), align=2N+W);
