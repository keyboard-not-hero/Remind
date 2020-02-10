settings.outformat="pdf";
unitsize(1cm);
import graph;
real log2(real x){
	return log(x)/log(2);
}
draw(graph(log2,0.25,4));
xaxis("$x$",LeftTicks(NoZero));
yaxis("$y$",RightTicks(NoZero));
label("$0$",(0,0),2SW);
