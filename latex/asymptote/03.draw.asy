import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
// unitsize(picture pic=currentpicture, real x, real y=x)
//     指定x/y轴的单元尺寸, 默认为1bp, 等于0.353mm. 参数列表如下:
//         x - 指定x轴方向的单元长度
//         y - 指定y轴方向的单元长度

// size(picture pic=currentpicture, real x, real y=x, bool keepAspect=Aspect)
//     指定x/y轴允许的最大长度. 参数列表如下:
//         x - 指定x轴方向允许的最大长度, 为0时代表不进行限制
//         y - 指定y轴方向允许的最大长度, 为0时代表不进行限制
//         keepAspect - 如果值为Aspect或true, 必须严格遵守图案长宽比, 并且在该前提下, 使某条边达到最大长度; 如果值为IgnoreAspect或false, 不遵守图案长宽比, 图形最终长宽为x和y

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
//                 TeXHead参数只用于Arrow, ArcArrow与Arrow结果一致
//         bar - 在路径上作指示bar, 列表如下:
//             BeginBar - 起始bar
//             EndBar/Bar - 结束bar
//             Bars - 双边bar
//             每一种bar都可以携带一个参数, 用于指定bar的长度
//         margin - 线条两端位置与指定的起点/终点的距离. 包含以下类型:
//             NoMargin - 没有间隔
//             BeginMargin - 只有线条起始与起点有间隔
//             EndMargin/Margin - 只有线条结束终点有间隔
//             Margins - 线条起始与起点, 结束和终点都有间隔
//             Margin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** Margin的1个单位为labelmagin(p), 约等于3.597bp, 可以使用label(string(labelmagin(currentpen)))显示数值
//             BeginPenMargin - 只有线条起始与起点有间隔
//             EndPenMargin/PenMargin - 只有线条结束终点有间隔
//             PenMargins - 线条起始与起点, 结束和终点都有间隔
//             PenMargin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** PenMargin的1个单位为linewidth(p), 约等于0.5bp, 可以使用label(string(linewidth(currentpen)))显示数值
//             DotMargin(real begin, real end=begin) - 可以指定间隔包含几个单位
//             ** DotMargin的1个单位为dotfactor*linewidth(p), 约等于3bp, 可以使用label(string(dotfactor*linewidth(currentpen)))显示数值
//             ** 不带参数的DotMargin编译的结果有问题, 这里不进行描述
//         legend -
//         marker -

// 示例1 - g/p参数
unitsize(1cm);
draw((-.1,0) -- (1,1) -- (2,sqrt(2)));
draw((-.1,0) .. (1,1) .. (2,sqrt(2)), p=green);
// 示例2 - L/align参数
draw(L="me",(-.1,-.5) -- (2,-.5), align=N);
// 示例3 - p参数
draw((-.1,-1) -- (2,-1), p=linewidth(1pt)+red);
// 示例3 - bar/arrow参数
draw((-.1,-1.5) -- (2,-1.5), arrow=EndArrow(DefaultHead), bar=BeginBar);
draw((-.1,-2) -- (2,-2), arrow=EndArcArrow(DefaultHead), bar=BeginBar);
draw((-.1,-2.5) -- (2,-2.5), arrow=EndArrow(SimpleHead), bar=BeginBar);
draw((-.1,-3) -- (2,-3), arrow=EndArcArrow(SimpleHead), bar=BeginBar);
draw((-.1,-3.5) -- (2,-3.5), arrow=EndArrow(HookHead), bar=BeginBar(10pt));
draw((-.1,-4) -- (2,-4), arrow=EndArcArrow(HookHead), bar=BeginBar(10pt));
draw((-.1,-4.5) -- (2,-4.5), arrow=EndArrow(TeXHead), bar=BeginBar(4pt));
draw((-.1,-5) -- (2,-5), arrow=EndArcArrow(TeXHead), bar=BeginBar(4pt));
// 示例4 - margin
draw((-.1,-6) -- (2,-6), margin=PenMargin(1,6));
draw((-.1,-6.2) -- (2,-6.2), margin=DotMargin(0,1));
draw((-.1,-6.4) -- (2,-6.4), margin=EndMargin);

// pen的多个属性可以使用'+'相连, 属性列表:
//     color - 可以使用已定义的颜色名称(如red)或指定颜色模式, 默认为black. 颜色模式方法列表:
//         pen gray(real g) - 使用灰度指定, g的取值范围[0,1]
//         pen rgb(real r, real g, real b) - 使用rgb指定, r/g/b的取值范围[0,1]
//         pen RGB(int r, int g, int b) - 使用rgb指定, r/g/b的取值为[0,255]
//         pen cmyk(real c, real m, real y, real k) - 使用cmyk指定, c/m/y/k的取值为[0,1]
//         pen invisible - 不显式, 但占据内容位置. 类似于tex的\phantom
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

// 示例5 - color/line_type参数
draw((0,-7) -- (2,-7),p=RGB(128,20,90)+linetype(new real[]));
draw((0,-7.2) -- (2,-7.2),p=RGB(51,255,255)+linetype(new real[]{0,4}));
draw((0,-7.4) -- (2,-7.4),p=RGB(153,153,255)+linetype(new real[]{8,8}));
draw((0,-7.6) -- (2,-7.6),p=RGB(204,153,255)+linetype(new real[]{24,8}));
draw((0,-7.8) -- (2,-7.8),p=RGB(255,204,153)+linetype(new real[]{8,8,0,8}));
draw((0,-8) -- (2,-8),p=RGB(20,255,153)+linetype(new real[]{8,8,0,8}, offset=4));
draw((0,-8.2) -- (2,-8.2),p=RGB(20,20,153)+linetype(new real[]{8,8,0,8}, false));
// 示例6 - line_width/line_cap参数
draw((0,-9) -- (2,-9), p=linewidth(2pt)+linecap(1));
draw((0,-9.4) -- (2,-9.4), p=linewidth(2pt)+linecap(2));
// 示例7 - opacity参数
draw((0,-10.4) -- (2,-10.4), p=linewidth(2pt)+opacity(0.5));

// void filldraw(picture pic=currentpicture, path g, pen fillpen=currentpen, pen drawpen=currentpen)
//     画直线并且填充闭合线条. 参数列表如下:
//         g - 路径, 包含两种类型线条, 列表如下:
//             -- 直线
//             .. 曲线
//         fillpen - 填充pen的属性, 具体参考pen
//         drawpen - 边框pen的属性, 具体参考pen

// 示例8 - filldraw
real dt=0.3;
draw((0,-12) -- (6*pi+dt,-12));
draw((0,-13-dt) -- (0,-11+dt));
path p=graph(sin,0,6*pi, join=operator --)--cycle;
filldraw(shift(0,-12)*p);

