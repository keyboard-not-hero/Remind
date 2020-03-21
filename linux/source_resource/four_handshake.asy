settings.outformat="pdf";
unitsize(2cm);

void pathlabel(string s="",real position,align align=NoAlign,pen p=currentpen,path g,bool sloped=false){
	Label L = Label(s,position=Relative(position),align=align,p=p);
	if(sloped){
		pair dir = dir(g,reltime(g,position));
		real angle = degrees(atan(dir.y/dir.x));
		L = rotate(angle)*L;
	}
	label(L,g);
}
arrowbar arrow = Arrow(HookHead);
draw((-1,2) -- (-1,-2));
draw((1,2) -- (1,-2));
path fin1 = (-1,.6) -- (1,.1);
path ack1 = (1,0) -- (-1,-.5);
path fin2 = (1,-.3) -- (-1,-.8);
path ack2 = (-1,-.9) -- (1,-1.4);
draw(fin1,arrow=arrow);
draw(ack1,arrow=arrow);
draw(fin2,arrow=arrow);
draw(ack2,arrow=arrow);
pathlabel("FIN\_WAIT\_1",position=0,g=fin1);
pathlabel("FIN",position=0.5,align=N,g=fin1,sloped=true);
pathlabel("CLOSE\_WAIT",position=1,g=fin1);
pathlabel("ACK",0.5,ack1,true);
pathlabel("FIN\_WAIT\_2",1,W,ack1);
pathlabel("LAST\_ACK",0,E,fin2);
pathlabel("FIN",0.5,N,fin2,true);
pathlabel("TIME\_WAIT",1,W,fin2);
pathlabel("ACK",0.5,N,ack2,true);
pathlabel("CLOSED",1,E,ack2);
