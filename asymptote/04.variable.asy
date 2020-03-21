settings.outformat="pdf";
unitsize(1cm);

path s = (0,0) .. (1,sqrt(2)) .. (2,2);
// draw(s);
arrowbar arr = Arrow(TeXHead);
draw(s,arr);

// Asymptote为强类型变量，声明变量前需要注明变量类型

//变量类型列表:
// path - 包含多个坐标的路径
// arrowbar - 箭头
// real - 实数
// pair - 坐标点 
