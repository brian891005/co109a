# HOMEWORK WEEK1

## 1.NOT
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Not.hdl

//**
 *Not gate:
 *out = not in
*//

CHIP Not {
 IN in;
 OUT out;

 PARTS:
  // Put your code here:
  Nand(a=in, b=in, out=out);
}</code></pre>

## 2.AND
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/And.hdl

/**
 * And gate: 
 * out = 1 if (a == 1 and b == 1)
 *       0 otherwise
 */

CHIP And {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=a,b=b,out=aNandb);
    Nand(a=aNandb,b=aNandb,out=out);
}</code></pre>

## 3.OR
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Or.hdl

 /**
 * Or gate:
 * out = 1 if (a == 1 or b == 1)
 *       0 otherwise
 */

CHIP Or {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a,out=Nota);
    Not(in=b,out=Notb);
    Nand(a=Nota,b=Notb,out=out);
}</code></pre>

## 4.XOR
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Xor.hdl

/**
 * Exclusive-or gate:
 * out = not (a == b)
 */

CHIP Xor {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a,out=Nota);
    Not(in=b,out=Notb);
    And(a=Nota,b=b,out=Notab);
    And(a=a,b=Notb,out=aNotb);
    Or(a=Notab,b=aNotb,out=out);
}</code></pre>

## 5.MUX
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Mux.hdl

/** 
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */

CHIP Mux {
    IN a, b, sel;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=sel,out=Notsel);
    And(a=a,b=Notsel,out=aNotsel);
    And(a=sel,b=b,out=selb);
    Or(a=aNotsel,b=selb,out=out);

}</code></pre>

## 6.DMUX
* CODE
<pre><code>// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/DMux.hdl

/**
 * Demultiplexor:
 * {a, b} = {in, 0} if sel == 0
 *          {0, in} if sel == 1
 */

CHIP DMux {
    IN in, sel;
    OUT a, b;

    PARTS:
    // Put your code here:
    Not(in=sel,out=Notsel);
    And(a=in,b=Notsel,out=a);
    And(a=in,b=sel,out=b);
}</code></pre>

## THE PICTURE
![PICTURE1](https://github.com/brian891005/co109a/blob/master/HW/%E5%9C%96%E7%89%87/1.jpg) ![PICTURE2](https://github.com/brian891005/co109a/blob/master/HW/%E5%9C%96%E7%89%87/2.jpg)






