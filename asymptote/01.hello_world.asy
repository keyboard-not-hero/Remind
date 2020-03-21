settings.outformat="pdf";
defaultpen(fontsize(10pt));
label("Hello World");

// Asymptote文件格式为.asy后缀，编译方式为asy <name>.asy
// 注意 - 编译时，默认以文件第一个.符号之前的文字<fir_name>作为生成文件名称，即<fir_name>.pdf，可使用asy -outname <fullname>.pdf <name>.asy进行指定编译，但结果忽略后缀

// "//"，为Asymptote的注释符号

// settings.outformat="pdf";，生成pdf格式结果。默认为eps格式结果

// defaultpen(fontsize(10pt));，配置字体大小。fontsize(10pt)返回对象pen

// label("Hello World");，配置文字。label完整格式如下:
// label(picture pic=currentpicture, Label L, pair position,
// align align=NoAlign, pen p=currentpen,filltype filltype=NoFill)
