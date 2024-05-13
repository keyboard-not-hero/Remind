// 1.坐标轴
// void xaxis(picture pic=currentpicture, Label L="", axis axis=YZero, real xmin=-infinity, real xmax=infinity, pen p=currentpen, ticks ticks=NoTicks, arrowbar arrow=None, bool above=false);
//     作x轴, 参数列表如下:
//         L - Label格式, x轴的label
//         axis - axis格式, 指定x轴在垂直方向的位置. 可选参数如下:
//             YZero(bool extend=true): 位于y=0的位置
//             YEquals(real Y, bool extend=true): 位于y=Y的位置
//         xmin - real格式, x轴的起始位置
//         xmax - real格式, x轴的终点位置
//         p - pen属性, x轴的线条属性. 具体参考draw.asy的pen
//         ticks - ticks格式, x轴的刻度线. 参考LeftTicks部分
//         arrow - arrowbar格式, 坐标轴的箭头. 参考draw.asy的draw函数的arrow参数
//         above - bool格式, 是否位于图层的上层. 默认位于底层


// 例1
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

// 坐标轴
xaxis(L="$x$", xmin=-3, xmax=3, arrow=ArcArrow(SimpleHead));
yaxis(L="$y$", ymin=-3, ymax=3, arrow=ArcArrow(SimpleHead));



// 2.等步进刻度线ticks
// ticks LeftTicks(Label format="", ticklabel ticklabel=null, bool beginlabel=true, bool endlabel=true, int N=0, int n=0, real Step=0, real step=0, bool begin=true, bool end=true, tickmodifier modify=None, real Size=0, real size=0, bool extend=false, pen pTick=nullpen, pen ptick=nullpen);
//     制作沿线条方向左侧的tick, 类似的有RightTicks/Ticks. 参数列表如下:
//         format - str格式, tick的格式, 默认为$%.4g$
//         ticklabel - 自定义函数, 将label值转化为string
//         beginlabel - bool格式, 是否显示第一个tick的label
//         endlabel - bool格式, 是否显示最后一个tick的label
//         N - int格式, major tick数量
//         n - int格式, 单个major tick之间, 划分的minor tick数量
//         Step - real格式, major tick之间的间隔. N必须未指定
//         step - real格式, minor tick之间的间隔. n必须未指定
//         begin - bool格式, 是否包含第一个major tick
//         end - bool格式, 是否包含最后一个major tick
//         modify - 自定义函数, 返回real[], 包含major/minor tick值
//         Size - real格式, major tick的大小
//         size - real格式, minor tick的大小
//         pTick - major tick的pen
//         ptick - minor tick的pen


// 例2
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

// 带tick的坐标轴
xaxis(L="$x$", xmin=-3, xmax=3, ticks=LeftTicks(beginlabel=false,endlabel=false,begin=false,end=false,N=6,n=2), arrow=ArcArrow(SimpleHead));
yaxis(L="$y$", ymin=-3, ymax=3, ticks=RightTicks(beginlabel=false,endlabel=false,begin=false,end=false,N=6,n=2), arrow=ArcArrow(SimpleHead));



// 3.指定位置的ticks
// ticks LeftTicks(Label format="", ticklabel ticklabel=null, bool beginlabel=true, bool endlabel=true, real[] Ticks, real[] ticks=new real[], real Size=0, real size=0, bool extend=false, pen pTick=nullpen, pen ptick=nullpen)
//     制作沿线条方向左侧的tick, 类似的有RightTicks/Ticks. 参数列表如下:
//         format - str格式, tick的格式, 默认为$%.4g$
//         ticklabel - 自定义函数, 将label值转化为string
//         beginlabel - bool格式, 是否显示第一个tick的label
//         endlabel - bool格式, 是否显示最后一个tick的label
//         Ticks - real数组, 指定major的位置
//         ticks - real数组, 指定minor的位置
//         Size - real格式, major tick的大小
//         size - real格式, minor tick的大小
//         pTick - major tick的pen
//         ptick - minor tick的pen


// 例3
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

// 使用real数组指定tick位置的坐标轴
xaxis(L="$x$", xmin=-3, xmax=3, ticks=LeftTicks(Ticks=new real[]{-2,-1,1,2}), arrow=ArcArrow(SimpleHead));
yaxis(L="$y$", ymin=-3, ymax=3, ticks=RightTicks(Ticks=new real[]{-2,-1,1,2}), arrow=ArcArrow(SimpleHead));



// 4.legend函数
// frame legend(picture pic=currentpicture, int perline=1,
//              real xmargin=legendmargin, real ymargin=xmargin,
//              real linelength=legendlinelength,
//              real hskip=legendhskip, real vskip=legendvskip,
//              real maxwidth=0, real maxheight=0,
//              bool hstretch=false, bool vstretch=false, pen p=currentpen);
//     组织一个legend对象. 参数列表如下:
//         perline - legend每行标记的个数, 默认为1, 为0时代表自动选择个数
//         xmargin - legend字符串左右与边框的额外距离
//         ymargin - legend字符串上下与边框的额外距离
//         linelength - legend内标识线段的长度
//         p - legend边框线的pen属性


// 例4
// 示例6 - legend
unitsize(3cm);
real dt=0.2;
draw((-dt,-8) -- (4+dt,-8), arrow=ArcArrow(SimpleHead));
draw((0,-9-dt) -- (0,-7+dt), arrow=ArcArrow(SimpleHead));
real f1(real t){
   return sin(pi*t);
};
real f2(real t){
   return cos(pi*t);
};
path p1=graph(f1,0,4);
path p2=graph(f2,0,4);
draw(shift(0,-8)*p1, p=green, legend="$\sin(\pi x)$");
draw(shift(0,-8)*p2, p=blue, legend="$\cos(\pi x)$");
path pl=(4.5,0.8) -- (4.5,0.8);
draw(shift(0,-8)*pl, p=linewidth(4pt)+red);
add(src=legend(), position=shift(0,-8)*(4.5,0.8));
