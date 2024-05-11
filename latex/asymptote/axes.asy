// 坐标轴
// void xaxis(picture pic=currentpicture, Label L="", axis axis=YZero, real xmin=-infinity, real xmax=infinity, pen p=currentpen, ticks ticks=NoTicks, arrowbar arrow=None, bool above=false);
//     作x轴, 参数列表如下:
//         L - x轴的label
//         axes - 


// 例1
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

// 坐标轴
xaxis(L="$x$", xmin=-3, xmax=3, arrow=ArcArrow(SimpleHead));
yaxis(L="$y$", ymin=-3, ymax=3, arrow=ArcArrow(SimpleHead));



// 刻度线ticks
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

