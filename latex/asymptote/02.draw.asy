settings.outformat="pdf";
unitsize(2cm);
// draw((-.1,0) -- (2,0),arrow=Arrow());
// draw((0,-.1) -- (0,2),arrow=Arrow());
// draw((-.1,-3) -- (2,-3),arrow=ArcArrow());
// draw((0,-3.1) -- (0,-1),arrow=ArcArrow());
// draw((-.1,-6) -- (2,-6),arrow=Arrow(SimpleHead));
// draw((0,-6.1) -- (0,-4),arrow=Arrow(SimpleHead));
// draw((-.1,-9) -- (2,-9),arrow=ArcArrow(SimpleHead));
// draw((0,-9.1) -- (0,-7),arrow=ArcArrow(SimpleHead));
// draw((-.1,-12) -- (2,-12),arrow=Arrow(HookHead));
// draw((0,-12.1) -- (0,-10),arrow=Arrow(HookHead));
// draw((-.1,-15) -- (2,-15),arrow=ArcArrow(HookHead));
// draw((0,-15.1) -- (0,-13),arrow=ArcArrow(HookHead));
// draw((-.1,-18) -- (2,-18),arrow=Arrow(TeXHead));
// draw((0,-18.1) -- (0,-16),arrow=Arrow(TeXHead));

// draw((0,0) -- (4,0),solid);
// draw((0,1) -- (4,1),dashed);
// draw((0,2) -- (4,2),dashdotted);
// draw((0,3) -- (4,3),dotted);

// draw((0,0) .. (pi/2,1) .. (pi,0) .. (3*pi/2,-1) .. (2*pi,0));
// draw((0,-3){(1,2)} .. (pi/2,-2){right} .. (pi,-3){(1,-1)} .. (3*pi/2,-4){right} .. (2*pi,-3){(1,1)});

// draw((-1,0) -- (0,2) -- (1,0) -- cycle ^^ (2,0) -- (2,2) -- (4,2) -- (4,0) -- cycle);

// draw((0,0) .. (pi/2,1) .. (pi,0) .. (3*pi/2,-1) .. (2*pi,0),marker=MarkFill[1]);
// draw((0,-3){(1,2)} .. (pi/2,-2){right} .. (pi,-3){(1,-1)} .. (3*pi/2,-4){right} .. (2*pi,-3){(1,1)},marker=MarkFill[4]);

// draw((0,0) -- (0,4),blue);

// fill((0,0){up} .. (1,1) .. (2,sqrt(2)) -- (2,0) -- cycle,blue);

// filldraw((0,0){up} .. (1,1) .. (2,sqrt(2)) -- (2,0) -- cycle,fillpen=opacity(0.4)+blue,drawpen=red);

// draw(circle((0,0),5));
// draw(ellipse((0,10),8,4));

// draw(box((0,0),(2,1)));
// draw(polygon(5));

// draw((-1.2,0) -- (1.2,0));
// draw((0,-1.2) -- (0,1.2));
// draw(arc((0,0),1,0,90),arrow=Arrow(TeXHead));

// draw((-3,0) -- (3,0));
// draw((0,-3) -- (0,3));
// draw(arc((0,0),(1,0),(0,3),direction=CCW),red,arrow=Arrow(TeXHead));
// draw(arc((0,0),(1,0),(0,0.1),direction=CW),blue,arrow=Arrow(TeXHead));

// dot((1,0));

// draw((-.1,0) -- (5,0),arrow=Arrow(TeXHead));
// draw((0,-.1) -- (0,5),arrow=Arrow(TeXHead));
// import math;
// add(grid(4,3,red));

draw((-1,0) -- (1,0),L="see",align=N,arrow=Arrow(DefaultHead));


// unitsize(1cm);，指定线条的单位长度。默认为0.035cm，为一个圆点的直径
// unitsize(1cm,1cm);，分别指定x/y轴的单位长度

// size(1cm);，指定一张图片，宽或高都只能小于等于指定的单位。成比例缩放
// size(1cm, 2cm);，指定一张图片，宽或高中，最长的那一边不能大于2cm，并且短的那一边不能大于1cm。当其中一个参数为0时，该边不被限制，如size(4cm,0)为图片的宽不能大于4cm，高不受限制。成比例缩放
// size(1cm, 1cm, keepAspect=false);，size(1cm,1cm)的不成比例缩放版本，宽和高为指定

// draw(point1 -- point2);，画一条直线，point为pair类型坐标点

// draw(point1 -- point2,dotted);，绘制一条直线，并指定直线的线条类型，列表如下:
// 1.solid - 实线
// 2.dashed - 虚线
// 3.dashdotted - 点划线
// 4.dotted - 点线

// draw(point1 .. point2);，画一条弧线。使折线的拐点尽量圆滑

// draw(point1 .. point2 ^^ point3 -- point4);，绘制图形，^^代表两点之间不进行连线。实际上，^^代表path数组元素的分割点

// draw(point1{pair delta1} .. {delta2}point2 .. point3{delta3});，{delta}代表指定点的切线在水平方向和垂直方向的增益，斜率为y/x，也可使用up/down/left/right方向指定

// draw(point1 -- point2,arrow);，绘制一条直线，并在直线末尾添加箭头

// draw(point1 -- point2,marker);，绘制路径上的标记点，打上记号。记号类型列表如下:
// Mark[0] - 空心圆
// Mark[1] - 空心三角形
// Mark[2] - 空心四边形
// Mark[3] - 空心五边形
// Mark[4] - 空心倒立三角形
// Mark[5] - x形状
// Mark[6] - *形状
// MarkFill[0] - 实心圆
// MarkFill[1] - 实心三角形
// MarkFill[2] - 实心四边形
// MarkFill[3] - 实心五边形
// MarkFill[4] - 实心倒立三角形

// draw(point1 -- point2,red);，给绘制线条绘色

// fill(picture pic=currentpicture,path g,pen p=currentpen);，绘制一个内部填充的图形，p可用于填充颜色

// void filldraw(picture pic=currentpicture,path g,pen fillpenp=currentpen,pen drawpen=currentpen);，绘制一个带内部填充和描边框的图形，fillpen用于指定填充颜色及颜色透明度，drawpen用于边框颜色和透明度

// draw(circle(pair center,real radius));，绘制圆，该圆以center为圆心，radius为半径

// draw(ellipse(pair center,real horizontal,real vertical));，绘制椭圆，该椭圆以center为圆心，2*h为水平直径，2*v为垂直直径

// draw(box(pair point1,pair point2));，绘制长方形，point1/point2分别为对角坐标点

// draw(polygon(n));，绘制多边形，顶点在半径为1个单位的圆上

// draw(arc(pair center,real radius,real start_angle,real end_angle));，绘制圆弧，圆心为center，半径为radius，起始角度为start_degress，终止角度为end_degress

// draw(arc(pair center, pair start_point, pair end_point, bool direction=CCW));，绘制圆弧，圆心为center，起始点为start_point(center到start_point的距离确定为半径)，终止点在center到end_point的方向上(半径由起始点处确定)，圆弧方向为direction(可分为CCW和CW，默认为CCW逆时针)

// dot(pair point);，绘制实心圆点

// add(grid(column,row,red));，绘制row行column列的栅栏，颜色为red。包含在math包中，需要使用导入语句:import math

// void draw(picture pic=currentpicture,Label L="",path[] g,align align=NoAlign,pen p=currentpen,arrowbar arrow=None,arrowbar bar=None,margin margin=NoMargin,Label legend="",marker marker=nomarker);，绘图指令总结，p可以为边框颜色和宽度(linewidth)
// L为路径g附带的文字
// align为L相对于g的位置，可选列表：N/S/W/E/NW/NE/SW/SE/Center
// p为路径的颜色和宽度
// -------------------arrow范围
// arrow为路径起始或结尾箭头，可选列表：
// 1.None/Blank/BeginArrow/MidArrow/EndArrow(Arrow)/Arrows
// 2.BeginArcArrow/MidArcArrow/EndArcArrow(ArcArrow)/ArcArrows
// 以上箭头，除了None/Blank，其他箭头参数列表，如BeginArrow(arrowhead arrowhead=DefaultHead,real size=arrowsize(p),real angle,filltype filltype,)
// arrowhead为箭头样式，可选列表：DefaultHead/SimpleHead/HookHead/TeXHead
// size为箭头大小，默认为pen p大小
// angle为线条与箭头所形成的夹角
// filltype为箭头填充，可选列表：
// FillDraw - 填充并描边,可带fillpen和drawpen参数
// Fill - 填充，可带颜色参数
// Draw - 描边，可带颜色参数
// NoFill - 描边，为变量
// UnFill - 箭头不显示
// -------------------arrow范围
// bar为路径起始或结尾指示符，可选列表：None/BeginBar/EndBar/Bars，除None外，其他可使用一个bar的长度参数
// margin为路径起始或结尾是否与起始/结尾描点保持间距，可选列表：NoMargin/BeginMargin/EndMargin/Margins
// marker为标记描点的类型 

// void draw(pair origin,picture pic=currentpicture,Label L="",path g,align align=NoAlign,pen p=currentpen,arrowbar arrow=None,arrowbar bar=None,margin margin=NoMargin,Label legend="",marker marker=nomarker);，绘图指令总结，p可以为边框颜色和宽度(linewidth)，origin为刻度，对应的g单位长度大小与普通单位长度小很多
