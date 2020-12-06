# HOMEWORK WEEK8補充

## C語言指令
* CODE
<pre><code>
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
D=A //先將D設0
@2  
M=D //將結果先規0
@0  //LOOP1
D=M //將R0設為計數器
@16
D;JLE //D等於0跳出迴圈
@1
D=M  //將值輸入D
@2
M=D+M //將D值加入R2
@0
M=M-1 //計數器-1
@4  
0;JMP //回到LOOP1
@16
0;JMP
</code></pre>
* 先將組合語言用C語言寫好，再轉換

* PICTURE(完成圖)

![PICTURE1](https://github.com/brian891005/co109a/blob/master/HW/%E5%9C%96%E7%89%87/22.jpg)

* PICTURE(Hack)

![PICTURE2](https://github.com/brian891005/co109a/blob/master/HW/%E5%9C%96%E7%89%87/23.jpg)
