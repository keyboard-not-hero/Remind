settings.outformat="pdf";
unitsize(2cm);
// for(int n=3;n<=7;++n){
//	draw(shift(2*n,0)*circle((0,0),1));
//	draw(shift(2*n,0)*polygon(n));
// }

// draw(scale(1.5,2)*circle((0,0),1),blue);
// draw(circle((0,3),1),red);

// draw(circle((0,0),1),green);
// draw(rotate(90,(-sqrt(3)/2,-1/2))*polygon(3),blue);

// draw(box((0,0),(2,2)));
// draw(slant(-1)*box((0,-3),(2,-1)));

fill(box((0,0),(1,1)),blue);
draw(shift(.5,.5)*box((0,0),(1,1)),green+linewidth(2pt));
clip(box((0,0),(1,1)));
draw(shift(-.5,-.5)*box((0,0),(1,1)),red+linewidth(2pt));



// Asymptote使用C语言风格的for循环。但是，只能使用前置自增/自减(如++n)，后置自增/自减无定义

// shift(x,y)代表分别在水平和垂直方向进行平移

// xscale(factor)代表在水平方向上进行拉伸或压缩
// yscale(factor)代表在垂直方向上进行拉伸或压缩
// scale(xfactor,yfactor)代表分别在水平和垂直方向上进行拉伸或压缩
// scale(factor)代表在水平和垂直方向按相同比例进行拉伸或压缩

// rotate(degree,z=(x,y))代表逆时针旋转图像，默认以(0,0)为旋转中心轴

// slant(factor)代表图形的倾斜角度，假设A代表倾斜边与水平线夹角，则factor为cot A

// clip()用于裁剪图形到剩余指定区域。该指令只对之前的绘制图形进行裁剪，之后的图形不进行裁剪
