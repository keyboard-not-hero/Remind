1.The shift cipher<br>
$Enc_k(m_1\cdots m_\ell)=c_1\cdots c_\ell, \ce{where}\ c_i=[(m_i+k) \mod 26]$<br>
$k$ mean letter shift a number between 0 and 25 from alphabet
<br>
<br>

2.The mono-alphabetic substitution cipher<br>

图1<br>
![image_not_found](pic/alpha_map.png)<br>

$Enc_k(m_1\cdots m_\ell)=c_1\cdots c_\ell$<br>
$m_i$到$c_i$的映射参考图1
<br>
<br>

3.The Vigenère (poly-alphabetic shift) cipher<br>

图2<br>
![image_not_found](pic/poly_alphabetic_shift.png)<br>

$Enc_k(m_1\cdots m_\ell)=c_1\cdots c_\ell, where\ c_i=[m_i+(k-a)-26]$<br>
参考图2, 使用的Key为cafe(可根据需要加密内容的字符长度, Key可环绕铺设)
<br>
<br>

4.digital signature<br>

图3<br>
![image_not_found](pic/digital_signature.png)<br>
