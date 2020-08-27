import settings;
outformat="pdf";
pdfviewer="evince";

unitsize(1cm);
path p = (0,0)--(4,0);
Label a = Label("$a$", position=MidPoint);
Label b = Label("$b$", position=MidPoint);
Label c = Label("$c$", position=MidPoint, align=N);
Label t = Label("$\theta$", position=BeginPoint, align=1.5N+5E);
draw(p, L=a);
label(p, L=t);
draw((4,0)--(4,3), L=b);
draw((0,0)--(4,3), L=c);
real a=asin(3/5)*180/pi;
draw(arc((0,0),0.5,0,a));
