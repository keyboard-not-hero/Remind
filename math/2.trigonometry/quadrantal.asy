settings.outformat="pdf";
import graph;
unitsize(4cm);
real f(real x){
	return x;
}
path p = graph(f,0,1);
draw(p);
label(Label("$r$",Rotate((1,1))),p);
xaxis("$x$",LeftTicks(NoZero,N=6,n=5,end=false));
yaxis("$y$",RightTicks(NoZero,N=6,n=5,end=false));
draw((-1.5,0) -- (1.5,0),arrow=Arrow(TeXHead));
draw((0,-1.5) -- (0,1.5),arrow=Arrow(TeXHead));
draw((1,0) -- (1,1),dashed);
draw((0,1) -- (1,1),dashed);
label(Label("$y$"),(1,0) -- (1,1));
label(Label("$x$"),(0,1) -- (1,1));
