// 1.draw函数
// void draw(picture pic=currentpicture, Label L="", path g, align align=NoAlign, pen p=currentpen, arrowbar arrow=None, arrowbar bar=None, margin margin=NoMargin, Label legend="", marker marker=nomarker)
//     作路径g. 参数列表如下:
//         L - 字符串
//         g - 路径, 包含两种类型线条, 列表如下:
//             -- 直线
//             .. 曲线
//         align - Label相对于path的相对位置, 可以使用N/S/W/E或组合. Label默认位于水平线(x轴正向)的正下方path中间, 并且在象限绕360, 相对于path的位置不变
//         p - pen的属性, 具体参考pen
//         arrow - 在路径上作箭头, 列表如下:
//             None - 不作箭头
//             BeginArrow - 起始箭头1
//             BeginArcArrow - 起始箭头2
//             MidArrow - 中间箭头1
//             MidArcArrow - 中间箭头2
//             EndArrow/Arrow - 结束箭头1
//             EndArcArrow/ArcArrow - 结束箭头2
//             Arrows - 双边箭头1
//             ArcArrows - 双边箭头2
//             每一种箭头都可以携带一个参数, 指定箭头类型, 类型列表如下:
//                 DefaultHead/SimpleHead/HookHead/TeXHead
//         bar - 在路径上作指示bar, 列表如下:
//             BeginBar - 起始bar
//             EndBar/Bar - 结束bar
//             Bars - 双边bar
//             每一种bar都可以携带一个参数, 用于指定bar的长度
//         margin - 线条两端位置与指定的起点/终点的距离. 包含以下类型:
//             NoMargin - 没有间隔
//             BeginMargin - 只有线条起始与起点有间隔
//             EndMargin/Margin - 只有线条结束与终点有间隔
//             Margins - 线条起始与起点, 结束和终点都有间隔
//             Margin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** Margin的1个单位为labelmagin(p), 约等于3.597bp, 可以使用label(string(labelmargin(currentpen)))显示数值
//             BeginPenMargin - 只有线条起始与起点有间隔
//             EndPenMargin/PenMargin - 只有线条结束终点有间隔
//             PenMargins - 线条起始与起点, 结束和终点都有间隔
//             PenMargin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** PenMargin的1个单位为linewidth(p), 约等于0.5bp, 可以使用label(string(linewidth(currentpen)))显示数值
//             DotMargin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** DotMargin的1个单位为dotfactor*linewidth(p), 约等于3bp, 可以使用label(string(dotfactor))显示dotfactor数值
//             ** 不带参数的DotMargin编译的结果有问题, 这里不进行描述
//         legend - 用于在legend进行标记的字符串
//         marker - 连接节点的显示图形. 列表如下:
//             Mark[0] - 圆
//             MarkFill[0] - 实心圆
//             Mark[1] - 三角形
//             MarkFill[1] - 实心三角形
//             Mark[2] - 正方形
//             MarkFill[2] - 实心正方形
//             Mark[3] - 五边形
//             MarkFill[3] - 实心五边形
//             Mark[4] - 倒三角形
//             MarkFill[4] - 倒实心三角形
//             Mark[5] - x
//             Mark[6] - *


// 例1
import settings;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

draw(L="0", (0,0) -- (2,0), align=SW, p=linewidth(0.8pt)+green, arrow=ArcArrow(SimpleHead), bar=BeginBar, margin=PenMargin(1,6));



// 2.图形
// 1)圆
// path circle(pair c, real r)
//     圆的函数, 参数如下:
//         c - 圆心所在位置
//         r - 半径长度

// unitcircle - 单位圆


// 2)圆弧
// path arc(pair c, real r, real angle1, real angle2)
//     圆心为c, 半径为r, 起始角度为angle1, 终止角度为angle2的一段圆弧

// path arc(pair c, explicit pair z1, explicit pair z2, bool direction = CCW);
//     圆心为c, (c -- z1)与(c -- z2)之间的弧, 方向由direction指定(clockwise/CW, counterclockwise/CCW)
//     半径由(c -- z1)/(c -- z2)短的线段确定


// 3)圆点
// void dot(picture pic=currentpicture, pair z, pen p=currentpen, filltype filltype=dotfilltype);
//     位置在z的圆点


// 4)椭圆
// path ellipse(pair c, real a, real b)
//     椭圆函数, 参数如下:
//         c - 圆心坐标
//         a - 水平方向半径
//         b - 垂直方向半径


// 5)长方形
// path box(pair a, pair b)
//     长方形函数, 参数如下:
//         a - 顶点坐标
//         b - 与a互为斜对角的顶点坐标


// 6)多边形
// path polygon(int n)
//     多边形函数, 参数如下:
//         n - 多边形的边数


// 例2 - 圆/圆弧/椭圆与圆点
draw((3,0) -- (7,0), arrow=ArcArrow(SimpleHead));
draw((5,-2) -- (5,2), arrow=ArcArrow(SimpleHead));
draw(circle((5,0), 1.5), p=red);
draw(shift(5,0)*unitcircle, p=green);
draw(arc((5,0), 1.5, 20, 90), p=yellow);
draw(ellipse((5,0), 1.5, 1), p=blue);
dot((5,0));


// 例3 - 长方形与多边形
draw(box((8,1), (10,-1)));
draw(shift(11,0)*polygon(5));
draw(shift(13,0)*polygon(6));



// 3.pen
// pen的多个属性可以使用'+'相连, 属性列表:
//     color - 可以使用已定义的颜色名称(如red)或指定颜色模式, 默认为black. 颜色模式方法列表:
//         pen gray(real g) - 使用灰度指定, g的取值范围[0,1]
//         pen rgb(real r, real g, real b) - 使用rgb指定, r/g/b的取值范围[0,1]
//         pen RGB(int r, int g, int b) - 使用rgb指定, r/g/b的取值为[0,255]
//         pen cmyk(real c, real m, real y, real k) - 使用cmyk指定, c/m/y/k的取值为[0,1]
//         pen invisible - 不显示, 但占据内容位置. 类似于tex的\phantom
//     line_type - 使用linetype函数指定线条, 默认为实线. 如下:
//         linetype(real[] a, real offset=0, bool scale=true, bool adjust=true)
//             a - 实数数组, 在数组内的数字内进行on/off迭代, 并且在数组内的数字数量之后, 进行数组内容循环
//             offset - 线条往左偏移的值
//             scale - true时, 单元为line width; 为false时, 单元为PostScript
//     line_width - 使用linewidth(real)指定线条宽度, 默认为0.5bp
//     line_cap - 线条末端的圆滑类型, 使用linecap(int)指定, 默认为1, 可选0/1/2
//     line_join - 使用linejoin(int)指定, 默认为1, 可选0/1/2
//     font - 使用font(string encoding, string family, string series, string shape)指定, 默认为("OT1","cmr","m","n"), 为罗马现代pc字体
//     font_size - 使用fontsize(real size, real lineskip=1.2*size)指定, 默认为12pt
//     opacity - 使用opacity(real opacity=1, string blend="Compatible")指定透明度, 仅适用于目标文件为pdf格式
//     ** 可使用defaultpen(pen)设置默认pen的属性, 并且在修改后, 可以使用resetdefaultpen()恢复defaultpen的初始值


// 例4 - color/line_type参数
draw((0,-15) -- (2,-15),p=RGB(128,20,90)+linetype(new real[]));
draw((0,-15.2) -- (2,-15.2),p=RGB(51,255,255)+linetype(new real[]{0,4}));
draw((0,-15.4) -- (2,-15.4),p=RGB(153,153,255)+linetype(new real[]{8,8}));
draw((0,-15.6) -- (2,-15.6),p=RGB(204,153,255)+linetype(new real[]{24,8}));
draw((0,-15.8) -- (2,-15.8),p=RGB(255,204,153)+linetype(new real[]{8,8,0,8}));
draw((0,-16) -- (2,-16),p=RGB(20,255,153)+linetype(new real[]{8,8,0,8}, offset=4));
draw((0,-16.2) -- (2,-16.2),p=RGB(20,20,153)+linetype(new real[]{8,8,0,8}, false));


// 例5 - line_width/line_cap参数
draw((0,-17) -- (2,-17), p=linewidth(2pt)+linecap(1));
draw((0,-17.4) -- (2,-17.4), p=linewidth(2pt)+linecap(2));


// 例6 - opacity参数
draw((0,-18.4) -- (2,-18.4), p=linewidth(2pt)+opacity(0.5));



// 4.fill函数
// void fill(picture pic=currentpicture, path g, pen p=currentpen)
//     填充闭合线条. 参数列表如下:
//         g - 路径
//         p - 填充pen属性


// 例7
draw((0,-22) -- (2,-22));
draw((0,-22) -- (0,-20));
fill(shift(0,-22)*box((0,0),(1,1)), p=gray(0.9));


// 5.filldraw函数
// void filldraw(picture pic=currentpicture, path g, pen fillpen=currentpen, pen drawpen=currentpen)
//     画直线并且填充闭合线条. 参数列表如下:
//         g - 路径, 包含两种类型线条, 列表如下:
//             -- 直线
//             .. 曲线
//         fillpen - 填充pen的属性, 具体参考pen
//         drawpen - 边框pen的属性, 具体参考pen


// 例8 - filldraw
draw((0,-25) -- (2,-25));
draw((0,-25) -- (0,-23));
path p=box((0,0),(1,1));
filldraw(shift(0,-25)*p, fillpen=mediumgray, drawpen=green);



// 6.clip函数
// void clip(picture pic=currentpicture, path g, stroke=false, pen fillrule=currentpen)
//     裁剪已存在内容的指定区域


// 例9
// clip会影响例1-例8
path p1 = box((0,0), (2,2));
path p2 = box((0,0), (-2,-2));
filldraw(shift(0,-28)*p1, fillpen=gray(0.8), drawpen=green);
filldraw(shift(0,-28)*p2, fillpen=gray(0.6), drawpen=red);
path p3 = box((-1,-1), (1,1));
// clip(shift(0,-28)*p3);
