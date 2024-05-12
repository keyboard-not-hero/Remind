// 1.shift函数
// transform shift(pair z)
// transform shift(real x, real y)
//     对图形在x/y上进行移位


// 例1 - shift
import settings;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

path x=(0,0) -- (1,0);
path y=(0,0) -- (0,1);
draw(x, arrow=ArcArrow(SimpleHead));
draw(y, arrow=ArcArrow(SimpleHead));
draw(shift(0,1)*x, p=red);



// 2.scale函数
// transform xscale(real x)
//     x轴方向上的伸缩比例

// transform yscale(real y)
//     y轴方向上的伸缩比例

// transform scale(real s)
//     x/y轴上的伸缩比例

// transform scale(real x, real y)
//     x/y轴上的伸缩比例, 分别指定


// 例2 - scale
path x=(0,-2) -- (1,-2);
path y=(0,-2) -- (0,-1);
draw(x, arrow=ArcArrow(SimpleHead));
draw(y, arrow=ArcArrow(SimpleHead));
draw(xscale(0.5)*x, p=green);



// 3.rotate函数
// transform rotate(real angle, pair z=(0,0))
//     图像以z为中心, 旋转angle度角


// 例3 - rotate
path x=(-1,-4) -- (1,-4);
path y=(0,-4) -- (0,-3);
draw(x, arrow=ArcArrow(SimpleHead));
draw(y, arrow=ArcArrow(SimpleHead));
path p = (0,-4) -- (0.5,-3);
draw(p, p=blue);
draw(rotate(90, (0,-4))*p, p=green);




// 4.reflect函数
// transform reflect(pair a, pair b)
//     原内容, 关于a/b两点组成的线条, 对称


// 例4 - reflect
path x=(0,-6) -- (1,-6);
path y=(0,-6) -- (0,-5);
draw(x, arrow=ArcArrow(SimpleHead));
draw(y, arrow=ArcArrow(SimpleHead));
path p = (0,-6) -- (0.5,-5);
draw(p, p=blue);
draw((0,-6) -- (1,-5));
draw(reflect((0,-6), (1,-5))*p, p=green);
