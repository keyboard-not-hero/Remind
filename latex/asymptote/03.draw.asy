import settings;
outformat="pdf";
pdfviewer="evince";
// 示例1 - 基本draw
unitsize(1cm);
draw((-.1,0) -- (2,0));
// 示例2 - L/align参数
draw(L="me",(-.1,-1) -- (2,-1), align=N);
// 示例3 - p参数
draw((-.1,-2) -- (2,-2), p=linewidth(1pt)+red);
// 示例3 - bar/arrow参数
draw((-.1,-3) -- (2,-3), arrow=EndArrow(DefaultHead), bar=BeginBar);
draw((-.1,-3.5) -- (2,-3.5), arrow=EndArrow(SimpleHead), bar=BeginBar);
draw((-.1,-4) -- (2,-4), arrow=EndArrow(HookHead), bar=BeginBar(10pt));
draw((-.1,-4.5) -- (2,-4.5), arrow=EndArrow(TeXHead), bar=BeginBar(4pt));

draw((-.1,-6) -- (2,-6), margin=Margin(0.2cm, 0.2cm));



// unitsize(picture pic=currentpicture, real x, real y=x)
//     指定x/y轴的单元尺寸, 默认为1bp, 等于0.353mm. 参数列表如下:
//         x - 指定x轴方向的单元长度
//         y - 指定y轴方向的单元长度

// size(picture pic=currentpicture, real x, real y=x, bool keepAspect=Aspect)
//     指定x/y轴允许的最大长度. 参数列表如下:
//         x - 指定x轴方向允许的最大长度
//         y - 指定y轴方向允许的最大长度
//         keepAspect - 如果值为Aspect或true, 必须严格遵守图案长宽比, 并且在该前提下, 使某条边达到最大长度; 如果值为IgnoreAspect或false, 不遵守图案长宽比, 图形最终长宽为x和y
//     会被unitsize覆盖, 即使size在unitsize之后指定

// void draw(picture pic=currentpicture, Label L="", path g, align align=NoAlign, pen p=currentpen, arrowbar arrow=None, arrowbar bar=None, margin margin=NoMargin, Label legend="", marker marker=nomarker)
//     作路径g. 参数列表如下:
//         L - 字符串
//         g - 路径. 如: (0,0) -- (0,2)
//         align - Label相对于path的相对位置, 可以使用N/S/W/E或组合. Label默认位于水平线(x轴正向)的正下方path中间, 并且在象限绕360, 相对于path的位置不变
//         p - 路径的属性, 可以为linewidth(size)+red组合
//         arrow - 在路径上作箭头, 列表如下:
//             BeginArrow - 起始箭头
//             MidArrow - 中间箭头
//             EndArrow/Arrow - 结束箭头
//             Arrows - 双边箭头
//             每一种箭头都可以携带一个参数, 指定箭头类型, 类型列表如下:
//                 DefaultHead/SimpleHead/HookHead/TeXHead
//         bar - 在路径上作指示bar, 列表如下:
//             BeginBar - 起始bar
//             EndBar/Bar - 结束bar
//             Bars - 双边bar
//             每一种bar都可以携带一个参数, 用于指定bar的长度
//         margin -
//         legend -
//         marker -
