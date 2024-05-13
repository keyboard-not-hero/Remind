// 1.定义函数
// <return_data_type> <function_name>(<variable_data_type> <independdent_variable>){
//     return <dependent_variable_expression>;
// }

// 例1
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

real f(real x){
    return x^2;
}

label(string(f(2)));



// 2.预定义函数
// 1)graph函数
// guide graph(picture pic=currentpicture, real f(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --)
//     x/y在平面坐标轴上的路径, x的取值为[a,b], y的取值为f(x), 包含在graph模块中. 参数列表如下:
//         f - 以x作为参数, 函数结果为y
//         a - x的起始值
//         b - x的结束值
//         n - 将区间[a,b]的值平均分为n个点. 作图点数量
//         join - 描绘坐标的方式, 列表如下:
//             operator -- 使用直线的方式
//             operator .. 使用曲线的方式
//             Hermite     使用曲线的方式


// 例2
path xaxis = (-3, 0) -- (3, 0);
path yaxis = (0, -0.2) -- (0, 5);
arrowbar arrow = ArcArrow(SimpleHead);
transform t = shift(0, -6);

real f(real x){
    return x^2;
}

path curve = graph(f, -2, 2);

draw(t*xaxis, arrow=arrow);
draw(t*yaxis, arrow=arrow);
draw(t*curve);



// guide graph(picture pic=currentpicture, real x(real), real y(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --);
//     x/y在平面坐标轴上的路径, x的取值为x(t), y的取值为y(t), t的区间[a,b], 包含在graph模块中. 参数列表如下:
//         x - 以t作为参数, 函数结果为x
//         y - 以t作为参数, 函数结果为y
//         a - t的起始值
//         b - t的结束值
//         n - 将区间[a,b]的值平均分为n个点. 作图点数量
//         join - 描绘坐标的方式, 列表如下:
//             operator -- 使用直线的方式
//             operator .. 使用曲线的方式
//             Hermite     使用曲线的方式

// guide graph(picture pic=currentpicture, pair z(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --)
//     与上一个graph函数类似, 但使用返回pair的函数z替代分别返回real的函数x和y


// 例3
path xaxis = (-3, 0) -- (3, 0);
path yaxis = (0, -0.2) -- (0, 5);
arrowbar arrow = ArcArrow(SimpleHead);
transform t = shift(0, -12);

real f(real t){
    return t;
}

path curve = graph(sqrt, f, 0, 4);

draw(t*xaxis, arrow=arrow);
draw(t*yaxis, arrow=arrow);
draw(t*curve);



// guide graph(picture pic=currentpicture, real[] x, real[] y, interpolate join=operator --)
//     x/y在平面坐标轴上的路径, 坐标为(x[i], y[i]), 包含在graph模块中. 参数列表如下:
//         x - x轴数值数组
//         y - y轴数值数组
//         join - 描绘坐标的方式, 列表如下:
//             operator -- 使用直线的方式
//             operator .. 使用曲线的方式
//             Hermite     使用曲线的方式

// guide graph(picture pic=currentpicture, pair[] z, interpolate join=operator --)
//     与上一个graph类似, 使用pair数组代替两个real数组x和y


// 例4
path xaxis = (-.5, 0) -- (3, 0);
path yaxis = (0, -.5) -- (0, 3);
arrowbar arrow = ArcArrow(SimpleHead);
transform t = shift(0, -16);
real[] a = {0, 1, 2};
real[] b = {0, 1, 2};
path curve = graph(a, b);

draw(t*xaxis, arrow=arrow);
draw(t*yaxis, arrow=arrow);
draw(t*curve);



// 2)abs函数
// real abs(real x)
//     绝对值



// 3)sqrt函数
// real sqrt(real x)
//     x^2



// 4)reltime函数
// real reltime(path p, real l)
//     路径p上的相对分式点l所在的位置点


// 例5
path xaxis = (-3, 0) -- (3, 0);
path yaxis = (0, -0.2) -- (0, 5);
arrowbar arrow = ArcArrow(SimpleHead);
transform t = shift(0, -22);

real f(real t){
    return t;
}

path curve = graph(sqrt, f, 0, 4);

draw(t*xaxis, arrow=arrow);
draw(t*yaxis, arrow=arrow);
draw(t*curve);

real position = 0.8;
real a = reltime(t*curve, position);
Label l = Label(string(a), position=Relative(position));
dot(point(t*curve, a), green);
label(l, t*curve);



// 5)factorial函数
// real factorial(int n)
//     n的阶乘, 即n!



// 6)choose函数
// real choose(int n, int k)
//     n!/(k!(n-k)!)


// 例6
transform t = shift(0, -24);
real a = factorial(5);
real b = choose(6, 3);
label("factorial for five: "+string(a), t*(-3,0));
label("combination for three black ball and three white ball: "+string(b), shift(0,-.5)*t*(0,0));



// 7)圆的角度
// degreen使用角度, 圆的一圈为360度
// radian使用弧度, 圆的一圈为2*pi弧度
// real degrees(real radians)
//     将弧度转化为角度

// real radians(real degrees)
//     将角度转化为弧度



// 8)三角函数
// real sin(real x)
//     sin函数. x使用弧度

// real cos(real x)
//     cos函数. x使用弧度

// real tan(real x)
//     tan函数. x使用弧度

// real atan(real x)
//     atan函数. 返回值为弧度

// real atan2(real y, real x)
//     y除以x的结果, 再求atan


// 例7
real y1(real x){
    return sin(x);
}

real y2(real x){
    return cos(x);
}

path xaxis = (-0.5, 0) -- (2pi+1, 0);
path yaxis = (0, -2) -- (0, 2);
path p1 = graph(y1, 0, 2pi);
path p2 = graph(y2, 0, 2pi);
transform t = shift(0, -27);
arrowbar arrow = ArcArrow(SimpleHead);

draw(t*xaxis, arrow);
draw(t*yaxis, arrow);
draw(t*p1, blue);
draw(t*p2, orange);

label("result for atan2(real, real): "+string(atan2(2,2)), shift(-2,-3)*t*(0,0));
label("result for degrees(real radians): "+string(degrees(2pi)), shift(-2,-4)*t*(0,0));
