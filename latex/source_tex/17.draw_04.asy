settings.outformat = "pdf";
// 使用中文标注
// 使用pdflatex引擎作为latex引擎
 settings.tex = "pdflatex";
// 使用xeCJK作为latex中文包
 usepackage("xeCJK");
// 将latex内容作为导言引入latex
 texpreamble("\setCJKmainfont{SimSun}");
 draw((0,0) -- (1cm,1cm) -- (2cm,0));
label("中间",(1cm,0cm));
