import settings;
outformat="pdf";
pdfviewer="evince";

import graph;
unitsize(1cm);
xaxis("$x_1$", xmin=-1, xmax=9);
yaxis("$x_2$", ymin=-1, ymax=5);
fill((0,0) -- (6,1) -- (8,4) -- (2,3) -- cycle, p=RGB(180,180,180));
Label u=Label("$u$", position=EndPoint, align=N);
Label v=Label("$v$", position=EndPoint, align=E);
Label uv=Label("$u+v$", position=EndPoint, align=E);
draw(u, (0,0) -- (2,3), arrow=EndArrow);
draw(v, (0,0) -- (6,1), arrow=EndArrow);
draw(uv, (0,0) -- (8,4), arrow=EndArrow);
label("0", (0, 0), align=SW);

