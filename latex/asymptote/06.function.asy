import settings;
outformat="pdf";
pdfviewer="evince";

// guide graph(picture pic=currentpicture, real[] x, real[] y, interpolate join=operator --)
//     根据数组x/y作平面坐标图, 坐标为(x[i], y[i]), 包含在graph模块中. 参数列表如下:
//         x - x轴数值数组
//         y - y轴数值数组
//         join - 描绘坐标的方式, 列表如下:
//             operator -- 使用直线的方式
//             operator .. 使用曲线的方式
//             Hermite     使用曲线的方式


// guide graph(picture pic=currentpicture, real f(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --)
//     根据x/y作平面坐标图, x的取值为[a,b], y的取值为f(x), 包含在graph模块中. 参数列表如下:
//         f - 以x作为参数, 函数结果为y
//         a - x的起始值
//         b - x的结束值
//         n - 将区间[a,b]的值平均分为n个点. 作图点数量


// guide graph(picture pic=currentpicture, real x(real), real y(real), real a, real b, int n=ngraph, real T(real)=identity, interpolate join=operator --);
//     根据x/y作平面坐标图, x的取值为[a,b], y的取值为f(x), 包含在graph模块中. 参数列表如下:
//         x - 以t作为参数, 函数结果为x
//         y - 以t作为参数, 函数结果为y
//         a - t的起始值
//         b - t的结束值
//         n - 将区间[a,b]的值平均分为n个点. 作图点数量



// 预定义函数
// real abs(real x)
//     绝对值

// real sqrt(real x)
//     x^2

// real hypot(real x, real y)
//     x^2+y^2求平方根

// real sin(real x)
//     sin函数

// real cos(real x)
//     cos函数

