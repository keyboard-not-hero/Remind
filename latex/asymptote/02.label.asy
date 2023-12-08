// '//'之后为注释内容
// ';'为语句结束字符

// void label(picture pic=currentpicture, Label L, pair position, align align=NoAlign, pen p=currentpen, filltype filltype=NoFill)
//     在指定位置显示字符. 参数列表如下:
//         pic - 默认为currentpicture
//         L - 字符串内容或Label对象. 字符串符合LaTeX规则, 如: $...$为公式内容, \textbf{}为加粗字体
//         position - 内容放置坐标(x, y). 采用xy坐标形式, 往右为x增长方向, 往上为y增长方向, 默认为(0,0)
//         align - 内容向N/S/W/E方向进行偏移, 并且可以为组合模式, 如: 2N/NE
//         p - pen属性, 具体参考pen
//         filltype - 

//示例1 - position/p参数
import settings;
outformat="pdf";
pdfviewer="evince";
label("Hello World");
label("Hello Kitty", position=(0, 1cm), p=fontsize(20pt)+red);

//示例2 - align参数
label("o", (0, -1cm));
label("o", (0, -1cm), align=2N, p=red);
label("o", (0, -1cm), align=S, p=green);
label("o", (0, -1cm), align=W, p=blue);
label("o", (0, -1cm), align=E, p=purple);


// Label Label(string s="", pair position, align align=NoAlign, pen p=nullpen, embed embed=Rotate, filltype filltype=NoFill)
//     构建一个Label对象. 参数列表如下:
//         s - Label对象包含的字符串
//         p - 字符串的字体属性
//         position - 内容放置坐标(x, y). 采用xy坐标形式, 往右为x增长方向, 往上为y增长方向, 默认为(0,0)
//         align - 内容向N/S/W/E方向进行偏移, 并且可以为组合模式, 如: 2N/NE
//         embed - 对字符串进行的变形处理. 可先列表如下:
//             Rotate(pair) - 字符串逆时针旋转角度, 如图atan_rotate.png. 包含如下情况:
//                 1)x/y皆为正, 直接atan(y/x)
//                 2)x为负, y为正, atan(y/x)+pi
//                 3)x/y皆为负, atan(y/x)+pi
//                 4)x为正, y为负, atan(y/x)+2*pi
//         filltype - 填充类型, 参考label方法

