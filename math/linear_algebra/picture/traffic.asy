import settings;
outformat="pdf";
pdfviewer="evince";

unitsize(1cm);
path a1=(0,-2) -- (0,0);
path a2=(-3,0) -- (0,0);
path a3=(0,0) -- (0,2);
path a4=(0,0) -- (3,0);
path b1=(-3,2) -- (0,2);
path b2=(0,2) -- (0,4);
path b3=(0,2) -- (3,2);
path c1=(3,2) -- (3,0);
path c2=(3,2) -- (3,4);
path c3=(3,2) -- (6,2);
path d=(3,0) -- (6,0);
path legend=(5.5,3) -- (5.5, 4);

draw(a1, arrow=EndArrow(position=Relative(0.2)));
draw(L="Pratt St.", a2, align=N, arrow=EndArrow(position=Relative(0.2)));
draw(L="$x_2$", a3, align=W, arrow=MidArrow);
draw(L="$x_1$", a4, arrow=MidArrow);
draw(L="Lombard St.", b1, align=N, arrow=BeginArrow);
draw(L="Calvert St.", b2, align=2N+2W, arrow=EndArrow);
draw(L="$x_4$", b3, arrow=BeginArrow(position=Relative(0.5)));
draw(L="$x_5$", c1, arrow=EndArrow(position=Relative(0.5)));
draw(L="South St.", c2, align=2N+2W, arrow=BeginArrow(position=Relative(0.8)));
draw(c3, arrow=BeginArrow(position=Relative(0.8)));
draw(L="Inner Harbor", d, align=2S+W, arrow=EndArrow);
draw(L="N", legend, align=5S, p=linewidth(2pt), arrow=EndArrow(size=10pt));

label("500", (0,-2), align=S);
label("300", (-3,0), align=W);
label("300", (-3,2), align=W);
label("$x_3$", (0,4), align=N);
label("100", (3,4), align=N);
label("400", (6,2), align=E);
label("600", (6,0), align=E);

dot((0,0)^^(0,2)^^(3,2)^^(3,0));

label("A", (0,0), align=N+1.5E);
label("B", (0,2), align=N+1.5E);
label("C", (3,2), align=N+1.5E);
label("D", (3,0), align=N+1.5E);
