settings.outformat="pdf";
unitsize(2cm);

// path p = ((0,0) .. (1,1) .. (2,sqrt(2)));
// draw(p);
// path sub = subpath(p,1,1.1);
// draw(sub,red);

// path p = (-2,0) .. (0,7/4) .. (6/4,0) .. (0,-5/4) .. (-1,0) .. (0,3/4) .. (1/2,0) .. (0,-1/4) .. (0,0);
// draw(p,arrow=Arrow(TeXHead));
// real[] isections = times(p,1/3);
// draw((1/3,2) -- (1/3,-2));
// draw(subpath(p,isections[0],isections[1]),blue+linewidth(0.8),arrow=MidArcArrow(TeXHead));
// draw(subpath(p,isections[2],isections[3]),red+linewidth(0.8),arrow=MidArcArrow(TeXHead));

// path p = (-1,1) .. (0,0) .. (-1,-1);
// path p = (-1,-1) .. (0,0) .. (-1,1);
// path q = (1/2,0) .. (-1/3,0) .. (1/2,-1/2) .. (1,0) .. (-1/2,1/2);
// path q = (-1/2,1/2) .. (1,0) .. (1/2,-1/2) .. (-1/3,0) .. (1/2,0);
// draw(p,blue,arrow=Arrow(TeXHead));
// draw(q,green,arrow=Arrow(TeXHead));
// real[][] isections = intersect(q,p);
// dot(point(q,isections[0]));

// path p = (-1,1) .. (0,0) .. (-1,-1);
// path p = (-1,-1) .. (0,0) .. (-1,1);
// path q = (1/2,0) .. (-1/3,0) .. (1/2,-1/2) .. (1,0) .. (-1/2,1/2);
// path q = (-1/2,1/2) .. (1,0) .. (1/2,-1/2) .. (-1/3,0) .. (1/2,0);
// draw(p,blue,arrow=Arrow(TeXHead));
// draw(q,green,arrow=Arrow(TeXHead));
// real[][] isections = intersections(q,p);
// path sub = subpath(q,isections[0][0],isections[1][0]);
// draw(sub,red,arrow=MidArrow(TeXHead));

// path p = (1/2,0) .. (-1/3,0) .. (1/2,-1/2) .. (1,0) .. (-1/2,1/2);
// path l = (-1,-1) -- (1,1);
// draw(l,dashed+gray);
// draw(p,gray);
// real[][] isec = intersections(p,l);
// for(int i=0;i<isec.length;++i){
// 	real t = isec[i][0];
// 	pair tangent = dir(p,t);
// 	draw(shift(point(p,t))*scale(1/2)*((0,0) -- tangent),arrow=Arrow);
// }

// void pathlabel(string s="",real position,align align=NoAlign,pen p=currentpen,path g,bool sloped=false){
// 	Label L = Label(s,position=Relative(position),align=align,p=p);
// 	if(sloped){
// 		pair direct = dir(g,reltime(g,position));
// 		real angle = degrees(atan2(direct.y,direct.x));
// 		L = rotate(angle)*L;
// 	}
// 	label(L,g);
// }
// path p = (0,0) .. (4,.3) .. (5,-.3) .. (5,-4);
// draw(p);
// pathlabel("BeginPoint",position=0,g=p,sloped=true);
// pathlabel("MidPoint",position=0.5,g=p,sloped=true);
// pathlabel("EndPoint",position=1,g=p);

arrowbar arr = Arrow(TeXHead);
Label L = Label("here",position=MidPoint);
draw((-2,0) -- (2,0),arrow=arr);
draw((0,-2) -- (0,2),arrow=arr);
draw(circle((1,0),0.02),green);
arrow(L,(1,0),W,length=4cm,align=N,p=blue,margin=NoMargin);



// path subpath(path p,real a,real b);，在路径p上取一个x域为[a,b]的子路径

// real[] times(path p,real x);，返回路径p与经过(x,0)的垂直线的所有交点信息数组

// real[] times(path p,explicit pair z);，返回路径p与经过(0,z.y)的水平线的所有交点信息数组

// pair point(path p,real t);，从路径p中提取出关于交点t信息的交点坐标

// real[] intersect(path p,path q);，路径p和路径q的某个交点信息，real[0]为该交点在路径p上的信息，real[1]为该交点在路径q上的信息

// real[][] intersections(path p,path q);，路径p和路径q的所有交点信息，并且交点顺序根据路径p的方向排序，real[*][0]为所有交点在路径p上的信息，real[*][1}为所有交点在路径q上的信息

// pair intersectionpoint(path p,path q);，路径p和路径q的某个交点坐标

// pair[] intersectionpoints(path p,path q);，路径p和路径q的所有交点坐标数组，坐标无需排列

// pair dir(path p,real t);，路径p与某相交点的切线矢量

// real reltime(path p,real l);，返回路径p的百分比l的坐标信息

// real atan2(real y,real x);，返回tan值的弧度，区间[-pi,pi]

// real atan(real y/x);，返回tan只的弧度，区间[-pi/2,pi/2]

// real degrees(real radians);，返回弧度值对应的角度

// real radians(real degrees);，返回角度值对应的弧度

// arrow(picture pic=currentpicture,Label L="",pair b,pair dir,real length=arrowlength,align align=NoAlign,pen p=currentpen,arrowbar arrow=Arrow,margin margin=EndMargin);，创建一个带尾巴的箭头
// b为箭头头部所在位置
// dir为起始尾部相对于箭头头部所在位置(N/S/W/E)
// length为箭头长度
// align为L相对于箭头的位置
// p为箭头相关颜色和磅数
// arrow为箭头类型
// margin为箭头头部相对于点b的间隔。列表如下：
// 1.NoMargin - 与b紧邻
// 2.DotMargin - 与b间隔一个点
// 3.EndMargin - 与b间隔较大
// Label默认位于箭头BeginPoint
