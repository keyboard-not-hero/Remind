settings.outformat="pdf";
unitsize(1cm);
import graph;
real f(real x){
	return 2^x;
}
draw(graph(f,-2,2));
xaxis("$x$",LeftTicks(NoZero));
yaxis("$y$",RightTicks(NoZero));
label("$0$",(0,0),2SW);
