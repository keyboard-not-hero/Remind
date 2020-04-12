// 16.获取线条相交点数组。方法：times(p,x) - 代表路径p与经过(x,0)的垂直线的相交点
// path p = (-2,0) .. (0,7/4) .. (6/4,0) .. (0,-5/4) .. (-4/4,0) .. (0,3/4) .. (2/4,0) .. (0,-1/4) .. (0,0);
// draw(p);
// draw((-2.1,0) -- (2.1,0),arrow=Arrow(TeXHead));
// draw((0,-2.1) -- (0,2.1),arrow=Arrow(TeXHead));
// real[] section = times(p,1/3);
// draw(subpath(p,section[0],section[1]),blue);
// draw(subpath(p,section[2],section[3]),red);
// draw((1/3,-2) -- (1/3,2),gray);
// 例15的改进方案
// path p = (0,0) .. (1,1) .. (2, sqrt(2));
// draw(p,blue);
// real x = 1.4;
// real dx = .05;
// real t0 = times(p,x)[0];
// real t1 = times(p,x+dx)[0];
// draw(subpath(p,t0,t1),red);
// draw((x,0) -- (x,2),green);
// draw((x+dx,0) -- (x+dx,2),green);

// 17.获取线条相交数组的数组。方法：intersections(p1,p2) - 路径p1与p2相交数组的数组，在subpath中针对p1进行索引
// path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
// path q = (-1,1) .. (0,0) .. (-1,-1);
// draw(p,green);
// draw(q,blue);
// real[][] section = intersections(p,q);
// draw(subpath(p,section[1][0],section[2][0]),red);

// 18.获取相交点或其数组。方法：
// intersectionpoints(p1,p2) - 相交坐标数组
// intersectionpoint(p1,p2) - 相交坐标
// path p = (1/4,0) .. (0,1/3) .. (-1/2,0) .. (0,-2/3) .. (3/4,0) .. (0,1) .. (-4/3,0);
// path q = (-1,1) .. (0,0) .. (-1,-1);
// draw(p,green);
// draw(q,blue);
// pair[] sections = intersectionpoints(p,q);
// pair section = intersectionpoint(q,p);
// dot(section,red);

// 19.导入函数相关包，graph - 二维线性和对数图。方法：graph(f,s_define,e_define) - 将函数f在定义域[s_define,e_define]进行作图
// guide graph(picture pic=currentpicture, real f(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --);
// guide graph(picture pic=currentpicture, real x(real), real y(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --);
// guide graph(picture pic=currentpicture, real[] x, real[] y, interpolate join=operator --);
// f() - 函数；
// x()/y() - x/y关于t的函数；
// x/y - x/y轴的数组；
// a/b - 定义域范围[a,b]；
// join - 连线类型，--代表直线连接；..代表圆滑曲线；
 import graph;
// real[] x={1,2,3};
// real[] y=x^2;
// draw(graph(x,y));
// xaxis("$x$",LeftTicks(NoZero));
// yaxis("$y$",RightTicks(NoZero));
// real exponent(real x){
//     return 2^x;
// }
// real log2(real x){
//     return log(x)/log(2);
// }
// path g1 = graph(f,0,2);
// path g2 = graph(f,0,2,operator ..);
// draw(g1);
// 常用内置函数
// sqrt - 平方根
// exp - e^x
// log - 以e为底的对数
// log10 - 以10为底的对数
// 画有刻度的坐标轴，包含在graph包中
// xaxis(picture pic=currentpicture, Label L="", axis axis=YZero, real xmin=-infinity, real xmax=infinity, pen p=currentpen, ticks ticks=NoTicks, arrowbar arrow=None, bool above=false)
// L - 坐标轴名称;
// xmin/xmax - 最小/最大刻度，可根据xlimits进行自动判断;
// p - 画笔属性;
// ticks - 可选列表：LeftTicks/RightTicks/NoTicks/Ticks，分别代表刻度在沿线条方向的左侧/右侧/无刻度/左右两侧。可以使用Ticks(NoZero)去除原点的刻度，LeftTicks/RightTicks同理。默认为NoTicks值
// arrow - 坐标轴箭头，类似于draw的arrow参数
// LeftTicks(Label format="", ticklabel ticklabel=null, bool beginlabel=true, bool endlabel=true, int N=0, int n=0, real Step=0, real step=0, bool begin=true, bool end=true, tickmodifier modify=None, real Size=0, real size=0, bool extend=false, pen pTick=nullpen, pen ptick=nullpen);
// beginlabel - 是否包含起始主刻度标签
// endlabel - 是否包含尾端主刻度标签
// N - 坐标被分为的主刻度数
// n - 主刻度被分为的子刻度数
// Step - 坐标划分的主刻度间隔大小，前提N=0
// step - 主刻度划分的子刻度间隔大小，前提n=0
// begin - 是否包含起始主刻度，针对draw起始，不针对xmin
// end - 是否包含尾端主刻度，针对draw尾端，不针对xmax
// Size - 主刻度显示宽度
// size - 子刻度显示宽度
draw((0,0)--(1,1),blue);
xaxis("$x$",ticks=LeftTicks(beginlabel=false,endlabel=false,begin=true,end=true,Step=0.2,step=0.1,Size=6),xmin=0,xmax=1,arrow=Arrow(TeXHead));
// graph detail - https://asymptote.sourceforge.io/doc/graph.html

// 20.处理标注文字。Asymptote调用LaTeX进行标注文字处理
// draw((0,0) -- (3,0),blue,arrow=Arrow(TeXHead));
// draw((0,0) -- (0,3),blue,arrow=Arrow(TeXHead));
// label(str,position,align,path)函数中，str为标注文字，并可以为数学公式；position为放置坐标；align为相对于坐标的方位，方位有LeftSide/Center/RightSide，分别对应曲线的左侧/中间/右侧，在Relative()中放置方位，方位有N/S/W/E/NW/NE/SW/SE；path为文字跟随路径；Label(str,Rotate(pair))可以让字符串跟着路径(0,0) -- (x,y)旋转
// path p = (0,0) -- (2,1);
// draw(p);
// label("link",p);
// label("$x$", (3,0), align=SW);
// label("LeftSide",p,align=LeftSide);
// label("RightSide",p,align=RightSide);
// label("Center",p,align=Center);
// label("NW",p,align=Relative(NW));
// label("NE",p,align=Relative(NE));
// label("SW",p,align=Relative(SW));
// label("SE",p,align=Relative(SE));
// label(Label("link",Rotate((2,1))),p);

// 21.Label详解
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

