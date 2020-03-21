settings.outformat="pdf";
unitsize(2cm);

// draw((-1,0) -- (1,0));
// draw((0,-1) -- (0,1));
// label("i love you",(0,0),align=Center);

// path p = ((-1,0) -- (1,0));
// draw(p);
// label("i'm here",p,align=Center,filltype=Fill(white));

Label L = Label("here",BeginPoint,align=W);
path p = ((-1,0) -- (1,0));
draw(p,arrow=Arrow(TeXHead),L=L);


// void label(picture pic=currentpicture,Label L,pair position,align align=NoAlign,pen p=currentpen,filltype filltype=NoFill);，在坐标position上放置文字L，align默认为居中对齐
// align可选参数为N/S/W/E/NW/NE/SW/SE/Center。如N代表L位于position的北方
// filltype为L的背景填充，可使用Fill(red)形式来填充颜色

// void label(picture pic=currentpicture,Label L,path p,align align=NoAlign,pen p=currentpen,filltype filltype=NoFill);，在路径p上放置文字L

// Label Label(string s="",pair position,align align=NoAlign,pen p=nullpen,embed embed=Rotate,filltype filltype=NoFill);，创建一个Label目标，并且指定位于调用对象的位置positioni
// position可选列表:BeginPoint/MidPoint/EndPoint，或直接使用Relative(factor)指定
// L可以经过变形操作，如rotate/shift/slant/scale
