import settings;
import graph;
outformat="pdf";
pdfviewer="evince";
unitsize(1cm);

real radius = 0.35;
real lay_01 = 0.65;
real lay_02 = 0.95;
real move = 0.02;
draw(circle((0, 0), radius));
label("+6", (0, 0));
draw(arc((0, 0), lay_01, -45, 45));
draw(arc((0, 0), lay_02, -45, 45));
label("2", position=(lay_01-move, 0), filltype=Fill(white));
label("4", position=(lay_02-move, 0), filltype=Fill(white));
