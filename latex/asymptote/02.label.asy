// 1.asymptote画板层级
//   1)picture
//   2)frame



// 2.语句相关符号
// '//'之后为注释内容
// ';'为语句结束字符



// 3.asy文件前导
// 导入settings模块
// import settings;

// 输出格式设置为pdf, 默认为Postscript格式(后缀为.eps)
// outformat = "pdf";

// 设置pdf预览工具
// pdfviewer="evince";



// 4.size
// unitsize(picture pic=currentpicture, real x, real y=x)
//     指定x/y轴的单元尺寸, 默认为1 bp, 等于0.353mm. 参数列表如下:
//         x - 指定x轴方向的单元长度
//         y - 指定y轴方向的单元长度

// unitsize(1cm);


// size(picture pic=currentpicture, real x, real y=x, bool keepAspect=Aspect)
//     指定x/y轴允许的最大长度. 参数列表如下:
//         x - 指定x轴方向允许的最大长度, 为0时代表不进行限制
//         y - 指定y轴方向允许的最大长度, 为0时代表不进行限制
//         keepAspect - 如果值为Aspect或true, 必须严格遵守图案长宽比, 并且在该前提下, 使某条边达到最大长度; 如果值为IgnoreAspect或false, 不遵守图案长宽比, 图形>最终长宽为x和y



// 5.label函数
// void label(picture pic=currentpicture, Label L, pair position, align align=NoAlign, pen p=currentpen, filltype filltype=NoFill)
//     在指定位置显示字符. 参数列表如下:
//         pic - 默认为currentpicture
//         L - 字符串内容或Label对象. 字符串符合LaTeX规则, 如: $...$为公式内容, \textbf{}为加粗字体
//         position - 字符串中心位置(x, y). 采用xy坐标形式, 往右为x增长方向, 往上为y增长方向, 默认为(0,0)
//         align - 可以使用N/S/W/E进行指定, 并且可以任意组合(且可以和数字组合). 含义列表如下:
//             N - 字符串的下边界位于原中心位置的上方
//             S - 字符串的上边界位于原中心位置的下方
//             W - 字符串的右边界位于原中心位置的左方
//             E - 字符串的左边界位于原中心位置的右方
//         p - pen属性, 具体参考pen
//         filltype - 文字的填充类型. 列表如下:
//             FillDraw
//                 填充背景和描绘边框, 背景色和边框为黑色
//             FillDraw(real xmargin=0, real ymargin=xmargin, pen fillpen=nullpen, pen drawpen=nullpen)
//                 填充背景和描绘边框, 参数列表如下:
//                     xmargin - 文字左右与边框的额外距离
//                     ymargin - 文字上下与边框的额外距离
//                     fillpen - 填充的pen属性, 未指定时与drawpen同属性
//                     drawpen - 边框的pen属性, 未指定时与fillpen同属性
//                     ** fillpen与drawpen都未指定时, 默认为black
//             Fill
//                 填充背景, 背景色为黑色
//             Fill(real xmargin=0, real ymargin=xmargin, pen p=nullpen)
//                 填充背景, 参数列表如下:
//                     xmargin - 文字左右与背景边缘的额外距离
//                     ymargin - 文字上下与背景边缘的额外距离
//                     pen - 填充的pen属性
//             Draw
//                 描绘边框, 颜色为黑色
//             Draw(real xmargin=0, real ymargin=xmargin, pen p=nullpen)
//                 描绘边框, 参数列表如下:
//                 xmargin - 文字左右与边框的额外距离
//                 ymargin - 文字上下与边框的额外距离
//                 pen - 边框的pen属性
//             NoFill
//                 不进行背景色填充
//             UnFill
//                 将字符串的背景区域清空(包括所有其他内容)
//             UnFill(real xmargin=0, real ymargin=xmargin)
//                 将字符串的背景区域清空(包括所有其他内容), 参数列表如下:
//                     xmargin - 文字左右与背景边缘的额外距离
//                     ymargin - 文字上下与背景边缘的额外距离
//             RadialShade(pen penc, pen penr)
//                 辐射状过渡性颜色变化. 参数列表如下:
//                     penc - 辐射中心的pen属性
//                     penr - 辐射边缘的pen属性
//             RadialShadeDraw(real xmargin=0, real ymargin=xmargin, pen penc, pen penr, pen drawpen=nullpen)
//                 辐射状过渡性颜色变化. 参数列表如下:
//                     xmargin - 文字左右与边框的额外距离
//                     ymargin - 文字上下与边框的额外距离
//                     penc - 辐射中心的pen属性
//                     penr - 辐射边缘的pen属性
//                     drawpen - 边框的pen属性

// void label(picture pic=currentpicture, Label L, path g, align align=NoAlign, pen p=currentpen, filltype filltype=NoFill)
//     将Label对象添加到指定path中


// 示例2 - position/p参数
import settings;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

label("Hello World");
label("Hello Kitty", position=(0, 1), p=fontsize(20pt)+red);


// 示例3 - align参数
label("o", (2, 0));
label("o", (2, 0), align=2N, p=red);


// 示例4 - filltype参数
unitsize(1cm);
draw((3,0) -- (7,0), arrow=ArcArrow(SimpleHead));
draw((5,-2) -- (5,2), arrow=ArcArrow(SimpleHead));
label("Hello world", (5,0), filltype=RadialShadeDraw(xmargin=0.5cm, penc=red, penr=RGB(204,255,255), drawpen=green));



// 6.Label函数
// Label Label(string s="", pair position, align align=NoAlign, pen p=nullpen, embed embed=Rotate, filltype filltype=NoFill)
//     构建一个Label对象. 参数列表如下:
//         s - Label对象包含的字符串
//         p - 字符串的字体属性
//         position - 内容放置坐标(x, y). 预定义位置:
//             BeginPoint - 在path的起始处
//             MidPoint - 在path的中间. 默认值
//             EndPoint - 在path的结尾处
//             Relative(real r) - 在path的指定位置, r的区间[0,1]
//         align - 内容向N/S/W/E方向进行偏移, 并且可以为组合模式, 如: 2N/NE
//         p - pen属性, 具体参考pen
//         filltype - 填充类型, 参考label函数

