// 1.point函数
// pair point(path p, real t)
//     根据在路径path上的位置t, t的范围为[0,length(p)], 得到该点的坐标



// 2.subpath函数
// path subpath(path p, real a, real b)
//     从路径p的a位置到b位置子路径



// 3.times函数
// real[] times(path p, real x)
//     路径p与过点(x,0)的垂直线的相交点

// real[] times(path p, explicit pair z)
//     路径p与过点(0,z.y)的水平线的相交点


// 例1
import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

real f(real x){
    return x;
}

path p = graph(f, 0, 2);
real[] intersect1 = times(p, 1);
real[] intersect2 = times(p, (0,1.5));
pair point1 = point(p, intersect1[0]);
pair point2 = point(p, intersect2[0]);
draw((0,0) -- (2,0), arrow=ArcArrow(SimpleHead));
draw((0,0) -- (0,2), arrow=ArcArrow(SimpleHead));
draw(p);
draw((1,0) -- (1,2), p=linetype(new real[]{6,6}));
draw((0,1.5) -- (2,1.5), p=linetype(new real[]{6,6}));
dot(point1, p=red);
dot(point2, p=green);



// 4.intersect函数
// real[] intersect(path p, path q, real fuzz=-1)
//     两个线条p和q的其中一个相交点
//     isect[0]为沿着路径p的位置, isect[1]为沿着路径q的位置



// 5.intersections函数
// real[][] intersections(path p, path q, real fuzz=-1)
//     两个线条p和q的所有相交点
//     isect[*][0]为沿着路径p的位置, isect[*][1]为沿着路径q的位置
//     点的顺序以p的0 --> 1为准



// 6.intersectionpoint函数



// 7.intersectionpoints函数



