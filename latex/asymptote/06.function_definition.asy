settings.outformat="pdf";
unitsize(2cm);
// import graph;
// real f(real x){
// 	return sin(x)*cos(57*x);
// }
// path p = graph(f,0,pi,Hermite);
// draw(p);

// draw((-2,0) -- (2,0),arrow=Arrow(TeXHead));
// draw((0,-2) -- (0,2),arrow=Arrow(TeXHead));
// import contour;
// real f(real x,real y){
// 	return y-x;
// }
// guide[][] graphs = contour(f,a=(-2,-6),b=(2,2),new real[]{0,1});
// draw(graphs[0]);
// draw(graphs[1]);




// guide graph(picture pic=currentpicture,real f(real),real a,real b,int n=ngraph,real T(real)=identity,interpolate join=operator --);，代表返回一个由方法f在定义域x在[T(a),T(b)]的路径，n代表定义域内的描点数(ngraph默认为100)，join为描点的连接方式。graph方法包含在graph模块中
// joint类型列表：
// operator -- - 直线连接
// operator .. - 曲线连接
// Hermite - 提供高精度连接

// guide graph(picture pic=currentpicture,real x(real),real y(real),real a,real b,int n=ngraph,real T(real)=identity,interpolate join=operator --);，代表返回一个由方法(x(t),y(t))在定义域t在[T(a),T(b)]的路径

// guide[][] contour(real f(real,real),pair a,pair b,real[] c,int nx=ngraph,int ny=nx,interpolate join=operator --,int subsample=1);，获取隐式函数f在box(a,b)中的图形，结果guide[n]代表f(x,y)=c[i]。contour方法包含在contour模块中

// new real[]{0,1}为创建新的real数组对象，该数组包含0,1两个元素。数组可使用arr.push(item)方法将元素加入数组
