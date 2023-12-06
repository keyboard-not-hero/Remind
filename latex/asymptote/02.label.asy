import settings;
outformat="pdf";
pdfviewer="evince";
//示例1 - position/p参数
label("Hello World");
label("Hello Kitty", position=(0, 1cm), p=fontsize(20pt)+red);

//示例2 - align参数
label("o", (0, -1cm));
label("o", (0, -1cm), align=2N, p=red);
label("o", (0, -1cm), align=S, p=green);
label("o", (0, -1cm), align=W, p=blue);
label("o", (0, -1cm), align=E, p=purple);



// '//'之后为注释内容

// ';'为语句结束字符

// void label(picture pic=currentpicture, Label L, pair position, align align=NoAlign, pen p=currentpen, filltype filltype=NoFill)
//     在指定位置显示字符. 参数列表如下:
//         pic - 默认为currentpicture
//         L - 字符串内容或Label对象. 字符串符合LaTeX规则, 如: $...$为公式内容, \textbf{}为加粗字体
//         position - 内容放置坐标(x, y). 采用xy坐标形式, 往右为x增长方向, 往上为y增长方向, 默认为(0,0)
//         align - 内容向N/S/W/E方向进行偏移, 并且可以为组合模式, 如: 2N/NE
//         p - 文字大小, fontsize对象或颜色名称, 可使用'+'进行组合. 如: p=fontsize(10pt)+red
//         filltype - 
