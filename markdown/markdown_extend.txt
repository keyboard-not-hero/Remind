#### 表格 - 使用---分隔表头与后续行, 使用|分割列
|name    |age     |  
|---     |---     |
|david   |17      |
|lucy    |18      |
|peter   |20      |

<br />
<br />
表格列对齐方式 - {:---左对齐, :---:居中对齐, ---:右对齐}

|name      |age     |  
|---:      |:---:   |
|david     |17      |
|lucy      |18      |
|Alexandra |20      |

<br />
<br />
<br />
<br />

#### Fenced Code Blocks - 所有space原样保留
```
for i in ['a','b','c']:
    print(i)
```

~~~
sum = 0
while i<10:
    sum += i
~~~

语法高亮特性
```python
import numpy as np
rng = np.random.default_rng(233)
arr = rng.standard_normal((6, 4))
print(arr)
```
<br />
<br />
<br />
<br />

#### 脚注
Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

<br />
<br />
<br />
<br />

#### 自定义列表
First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.

<br />
<br />
<br />
<br />

#### 删除线
~~you are fired~~, but you can hava a good job

<br />
<br />
<br />
<br />

#### 任务列表
- [x] 起床
- [ ] 刷牙
- [ ] 洗脸
- [ ] 上班

<br />
<br />
<br />
<br />

#### emoji - 可以直接粘贴, 或使用shortcut
✨
:cn:
emoji列表: https://emojipedia.org/
emoji shortcut列表: https://gist.github.com/rxaviers/7360908

<br />
<br />
<br />
<br />

#### 高亮文字(不适用于所有版本)
I need to highlight these ==very important words==.

<br />
<br />
<br />
<br />

#### 下角标(不适用于所有版本)
H~2~O

<br />
<br />
<br />
<br />

#### 上角标(不适用于所有版本)
X^2^

<br />
<br />
<br />
<br />

#### 自动对URL超链接
https://www.baidu.com

禁用
`https://www.baidu.com`
