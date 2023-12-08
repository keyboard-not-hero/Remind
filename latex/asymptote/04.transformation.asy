// transform shift(pair z)
// transform shift(real x, real y)
//     对图形在x/y上进行移位
// 示例1 - shift

import settings;
outformat="pdf";
pdfviewer="evince";

unitsize(1cm);
path x=(0,0) -- (1,0);
path y=(0,0) -- (0,1);
draw(x);
draw(y);
draw(shift(0,1)*x, p=red);
