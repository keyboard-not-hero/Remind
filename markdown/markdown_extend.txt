### 表格 - 使用---分隔表头与后续行, 使用|分割列, 表格后必须为空行
|name    |age     |
|---     |---     |
|david   |17      |
|lucy    |18      |
|peter   |20      |

<br>
<br>


#### 表格列对齐方式 - `{:---左对齐, :---:居中对齐, ---:右对齐}, &#124;用于在表格中显示|`

|name      |virtual_age     |
|---:      |:---:   |
|david &#124; peter     |17      |
|lucy      |18      |
|Alexandra |20      |

<br>
<br>
<br>
<br>




### 多行代码块 - 所有内容原样输出, 使用```或~~~限定
```
for i in ['a','b','c']:
    print(i)
```

~~~
sum = 0
while i<10:
    sum += i
~~~

#### 多行代码块 - 语法高亮特性, 在```或~~~后标注代码语言
~~~python
import numpy as np
rng = np.random.default_rng(233)
arr = rng.standard_normal((6, 4))
print(arr)
~~~
<br>
<br>
<br>
<br>




### 脚注 - 脚注引用包含在[]内, 使用^开始, 后跟数字或单词(不能包含空格); 脚注实体开头语脚注引用内容一致, 然后是: , 最后紧跟注解内容
Here's a simple footnote,[^1]  
and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

<br>
<br>
<br>
<br>




### 删除线 - 在内容前与内容后添加~~

~~you are fired~~, but you can hava a good job

<br>
<br>
<br>
<br>




### 任务列表
- [x] 起床
- [ ] 刷牙
- [ ] 洗脸
- [ ] 上班

<br>
<br>
<br>
<br>




### emoji - 可以直接粘贴, 或使用shortcut
✨  
:tent:  
emoji列表: https://emojipedia.org/  
emoji shortcut列表: https://gist.github.com/rxaviers/7360908

<br>
<br>
<br>
<br>




### 高亮文字(HTML元素)
I need to highlight these ==very important words==.

<br>
<br>
<br>
<br>




### 下角标(HTML元素)
H~2~O

<br>
<br>
<br>
<br>




### 上角标(HTML元素)
X^2^

<br>
<br>
<br>
<br>




### 自动对URL超链接
https://www.baidu.com

#### 禁用自动超链接
`https://www.baidu.com`
