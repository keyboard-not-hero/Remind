// 1.使用pdf文件代替默认的eps文件
settings.outformat = "pdf";

// 2.使用标签
//Label("Hello world!");

// 3.配置线条粗细
// unitsize(1cm);

// 4.画两点之间的直线
// draw((0,0)--(0,1));

// 5.作直线，并且添加箭头。箭头类型：
// ArcArrow(SimpleHead) - 空心箭头
// ArcArrow() - 实心箭头
// Arrow(TeXHead) - 坐标轴箭头
// draw((-0.1,0) -- (2,0), arrow=ArcArrow(SimpleHead));
// draw((0,-0.1) -- (0,2), arrow=ArcArrow(SimpleHead));

// 6.作两点之间的圆滑曲线，并且在点上标记实心圆
// draw((0,0) .. (pi/2,1) .. (pi,0) .. (3*pi/2,-1) .. (2*pi,0), marker=MarkFill[0]);

// 7.使用cycle进行图形闭环，并配置线条颜色和粗细
// draw((0,0) -- (4cm,0) -- (0,3cm) -- cycle,red+0.5mm);

// 8.作圆、椭圆、长方形、多边形、圆弧
// draw(circle((0,1),0.5),red);
// draw(ellipse((0,1),1.5,1),blue);
// draw(box((0,0),(2,1)));
// draw(polygon(5),green);
// draw(arc((0,0),3cm,0,150));

// 9.填充图形
// fill((0,0) -- (4cm,0) -- (0,3cm) --cycle,red);

// 10.填充图形，描边框，opacity()设置透明度
// 透明度0代表完全透明，透明度1代表完全不透明
// filldraw((0,0) -- (4cm,0) -- (0,3cm) -- cycle, fillpen=blue, drawpen=red+0.5mm);
// filldraw((0,0) -- (4cm,0) -- (0,3cm) -- cycle, fillpen=opacity(0.9)+palered, drawpen=red+0.5mm);

// 11.左下角为(0,0)的栅栏，add(grid(row,column,color))。在math包中
// 图形转化操作：
// shift() - 按坐标平移
// shift(x,y) - 按(x,y)坐标平移
// scale(n) - 按倍数进行缩放或放大
// xscale(n) - 在x轴上按倍数进行缩放或放大
// yscale(n) - 在y轴上按倍数进行缩放或放大
// scale(x,y) - 在x轴和y轴上按倍数进行缩放或放大
// rotate(degree,z=(x,y)) - 以(x,y)为轴心进行逆时针degree角度的旋转。默认轴心为(0,0)
// slant(factor) - 向右倾斜，1代表倾斜到45度
// reflect(a,b) - 
import math;
add(slant(1) * grid(10,10,gray));
//draw((0,0) -- (11cm,0),arrow=Arrow(TeXHead));
//draw((0,0) -- (0,11cm),arrow=Arrow(TeXHead));
//draw(reflect((1,1),(0,0)));

// for(int n=3;n<=7;++n){
//     draw(shift(2*n,0)*polygon(n));
// }

//draw((-0.1,0) -- (2,0),arrow=Arrow(TeXHead));
//draw((0,-0.1) -- (0,2),arrow=Arrow(TeXHead));
//path s = (0,0) .. (1,1) .. (2,sqrt(2));
//draw(s);
//fill(s -- (2,0) -- cycle);

// draw((-.5,0) -- (6,0),arrow=Arrow(TeXHead));
// draw((0,-.5) -- (0,6),arrow=Arrow(TeXHead));
// dot((1,1));
// dot((2,2));
// dot((3,3));
// dot((4,4));

//path thebox = box((0,0),(1,1));
//fill(thebox, blue);
//draw(shift(.5,.5)*thebox,green);
//clip(thebox);
//draw(shift(-.5,-.5)*thebox,red);

//path s = (0,0) .. (1,1) .. (2,sqrt(2));
//fill(s -- (2,0) -- cycle, mediumgray);
//draw(s);
//arrowbar axisarrow = Arrow(TeXHead);
//draw((-0.1,0) -- (2,0),arrow=axisarrow);
//draw((0,-0.1) -- (0,2),arrow=axisarrow);
//real x = 0.8;
//real dx = 0.05;
//path striptop = subpath(s,x,x+dx);
//real t0 = times(s,x)[0];
//real t1 = times(s,x+dx)[0];
//path striptop = subpath(s,t0,t1);
//draw((x,0) -- striptop -- (x+dx,0) -- cycle,blue);
//draw((x,0) -- (x,2),red);
//draw((x+dx,0) -- (x+dx,2),red);

//path p = (-2,0) .. (0,7/4) .. (6/4,0) .. (0,-5/4) .. (-4/4,0) .. (0,3/4) .. (2/4,0) .. (0,-1/4) .. (0,0);
//draw(p);
//draw((-2.1,0) -- (2.1,0),arrow=Arrow(TeXHead));
//draw((0,-2.1) -- (0,2.1),arrow=Arrow(TeXHead));
//real[] section = times(p,1/3);
//draw(subpath(p,section[0],section[1]),blue);
//draw(subpath(p,section[2],section[3]),red);
//draw((1/3,-2) -- (1/3,2),gray);

//path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
//path q = (-1,1) .. (0,0) .. (-1,-1);
//draw(p,green);
//draw(q,blue);
//real[][] section = intersections(p,q);
//draw(subpath(p,section[1][0],section[2][0]),red);

//path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
//path q = (-1,1) .. (0,0) .. (-1,-1);
//draw(p,green);
//draw(q,blue);
//pair[] sections = intersectionpoints(p,q);
//pair section = intersectionpoint(q,p);
//dot(section,red);

//import graph;
//real f(real x){
//	return sqrt(x);
//}
//path g = graph(f,0,2);
//path g = graph(f,0,2,operator ..);
//draw(g);

//draw((-.1,0) -- (2.1,0),arrow=Arrow(TeXHead),blue);
//draw((0,-.1) -- (0,2.1),arrow=Arrow(TeXHead),blue);
//draw((0,1) -- (0,0) -- (1,0) ^^ (2,1) .. (1,2) .. (0,1),red);

//draw((0,0) -- (3,0),blue,arrow=Arrow(TeXHead));
//draw((0,0) -- (0,3),blue,arrow=Arrow(TeXHead));
//label("$x$",(3,0),align=SW);

//path p = (0,0) .. (4,.3) .. (5,-.3) .. (5,-4);
//draw(p);
//Label L1 = Label("BeginPoint", position=BeginPoint);
//label(L1,p);
//Label L2 = Label("MidPoint",position=MidPoint);
//label(L2,p);
//Label L3 = Label("Endpoint",position=EndPoint);
//label(L3,p);
//Label L4 = Label("Relative(0.3)",position=Relative(0.3));
//label(L4,p);


// 文件步骤
// 1.使用.asy文件编辑asymptote文件
// 2.使用asy <name>.asy编译文件为.eps文件
// 3.文件搜索路径：
//   I   当前目录
//   II  环境变量ASYMPTOTE_DIR
//   III 环境变量ASYMPTOTE_HOME；如果变量未配置，则为$HOME/.asy
//   VI  UNIX - /usr/local/share/asymptote；Windows - C:\Program Files\Asymptote
// 4.配置默认pdfviewer
// [www@ ~]$ vi $HOME/.asy/config.asy
// import settings;
// pdfviewer="evince";


// 语法规则
// 6.draw((0,0) .. (pi/2,1) .. (pi,0) .. (3*pi/2,-1) .. (2*pi,0), marker=MarkFill[0]); 用于在直线上增加马克点
// 7.draw(circle((0,1),0.5),red); 用于画圆，并且线条为红色
// 8.draw(ellipse(0,1),1.5,1),blue); 用于画椭圆，线条为蓝色
// 9.draw(box((0,0),(2,1))); 用于画长方形，坐标分别为两个对角线坐标
// 10.draw(polygon(5),green); 用于指定多边形边数

// 11.for(int n=3;n<=7;++n){
//     draw(shift(2*n,0)*polygon(n));
// }
// 用于循环在水平上作多边形。shift(x_interval,y_interval)用于指定水平或垂直间隔；循环语句只能使用++n，不能使用n++

// 12.draw((0,0) -- arc((0,0),3,60,90) -- cycle); 用于做圆弧，连接圆心到圆弧起始，并连接圆弧结束到圆心

// 13.draw((-0.1,0) -- (2,0),arrow=Arrow(TeXHead));
// draw((0,-0.1) -- (0,2),arrow=Arrow(TeXHead));
// path s = (0,0) .. (1,1) .. (2,sqrt(2));
// draw(s);
// fill(s -- (2,0) -- cycle);
// s为定义的路径变量，fill用于填充闭环区域
// 变量类型列表：
// path - 作图路径；pair - 坐标点；real - 实数

// 14.draw((-.5,0) -- (6,0),arrow=Arrow(TeXHead));
// draw((0,-.5) -- (0,6),arrow=Arrow(TeXHead));
// dot((1,1));
// dot((2,2));
// dot((3,3));
// dot((4,4));
// dot(()); 用于画点

// 15.path thebox = box((0,0),(1,1));
// fill(thebox, blue);
// draw(shift(.5,.5)*thebox,green);
// clip(shift(.5,.5)*thebox);
// draw(shift(-.5,-.5)*thebox,red);
// clip()只保留之前语句的指定图形部分

// 16.path s = (0,0) .. (1,1) .. (2,sqrt(2));
// fill(s -- (2,0) -- cycle, mediumgray);
// draw(s);
// arrowbar axisarrow = Arrow(TeXHead);
// draw((-0.1,0) -- (2,0),arrow=axisarrow);
// draw((0,-0.1) -- (0,2),arrow=axisarrow);
// real x = 1.4;
// real dx = 0.05;
// path striptop = subpath(s,x,x+dx);
// real t0 = times(s,x)[0];
// real t1 = times(s,x+dx)[0];
// path striptop = subpath(s,t0,t1);
// draw((x,0) -- striptop -- (x+dx,0) -- cycle,blue);
// clip(box((1,-0.1),(1.6,1.5)));
// striptop=subpath(s,x,x+dx); 用于贴近曲线s的[x,x+dx]增量区间
// stroptop=subpath(s,t0,t1); 用于贴近曲线s的[x,x+dx]增量区间，并且比前一个更精确

// 17.path p = (-2,0) .. (0,7/4) .. (6/4,0) .. (0,-5/4) .. (-4/4,0) .. (0,3/4) .. (2/4,0) .. (0,-1/4) .. (0,0);
// draw(p);
// draw((-2.1,0) -- (2.1,0),arrow=Arrow(TeXHead));
// draw((0,-2.1) -- (0,2.1),arrow=Arrow(TeXHead));
// real[] section = times(p,1/3);
// draw(subpath(p,section[0],section[1]),blue);
// draw(subpath(p,section[2],section[3]),red);
// draw((1/3,-2) -- (1/3,2),gray);
// times(p,1/3)用于获得路径p与经过(1/3,0)垂直线的相交点数组

// 18.path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
// path q = (-1,1) .. (0,0) .. (-1,-1);
// draw(p,green);
// draw(q,blue);
// real[][] section = intersections(p,q);
// draw(subpath(p,section[1][0],section[2][0]),red);
// real[][] section = intersections(p,q); 用于获取路径p与路径q的相交点，研究对象为路径p
// draw(subpath(p,section[1][0],section[2][0]),red); 用于在路径p上作第二个相交点到第三个相交点的内容

// 19.path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
// path q = (-1,1) .. (0,0) .. (-1,-1);
// draw(p,green);
// draw(q,blue);
// pair[] sections = intersectionpoints(p,q);
// pair section = intersectionpoint(p,q);
// dot(sections,red);
// intersectionpoints(p,q); 返回路径p与路径q的所有相交点
// intersectionpoint(p,q); 返回路径p与路径q的某个相交点

// 20.导入函数图库
// import graph;
// 定义y=sqrt(x)函数
// real f(real x){
//	 return sqrt(x);
// }
// 以函数f作路径g，函数f的定义域为[0,2]
// path g = graph(f,0,2);
// 以函数f作路径g，并且使用..作为圆滑曲线
// path g = graph(f,0,2,operator ..);
// 以函数f作路径g，并且作为连接点的点数为1000，该操作可使曲线更为圆滑
// path g = graph(f,0,2,n=1000);
// draw(g);

// 21.draw((-.1,0) -- (2.1,0),arrow=Arrow(TeXHead),blue);
// draw((0,-.1) -- (0,2.1),arrow=Arrow(TeXHead),blue);
// draw((0,1) -- (0,0) -- (1,0) ^^ (2,1) .. (1,2) .. (0,1),red);
// ^^用于在点与点之间不进行连线

// 22.label(str,position,align,path)用于在指定位置放置，并可指定该字符串放置在指定位置的方位N/S/W/E/NW/NE/SW/SE，path用于配合路径使用
// draw((0,0) -- (3,0),blue,arrow=Arrow(TeXHead));
// draw((0,0) -- (0,3),blue,arrow=Arrow(TeXHead));
// label("$x$",(3,0),align=SW);

// 23.Label(str,position)中,position可用于指定label在路径中的相对位置，可选参数为BeginPoint/MidPoint/EndPoint/Relative(fraction)
// path p = (0,0) .. (4,.3) .. (5,-.3) .. (5,-4);
// draw(p);
// Label L1 = Label("BeginPoint", position=BeginPoint);
// label(L1,p);
// Label L2 = Label("MidPoint",position=MidPoint);
// label(L2,p);
// Label L3 = Label("Endpoint",position=EndPoint);
// label(L3,p);
// Label L4 = Label("Relative(0.3)",position=Relative(0.3));
// label(L4,p);
