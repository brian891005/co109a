# HOMEWORK WEEK8

## 1.PC
* CODE
<pre><code>
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/03/a/PC.hdl

/**
 * A 16-bit counter with load and reset control bits.
 * if      (reset[t] == 1) out[t+1] = 0
 * else if (load[t] == 1)  out[t+1] = in[t]
 * else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 * else                    out[t+1] = out[t]
 */

CHIP PC {
    IN in[16],load,inc,reset;
    OUT out[16];

    PARTS:
    // Put your code here:
    Inc16(in=PC,out=PCI);
    Mux16(a=PC,b=PCI,sel=inc,out=PCN);
    Mux16(a=PCN,b=in,sel=load,out=Load);
    Mux16(a=Load,b=false,sel=reset,out=Re);
    Register(in=Re,load=true,out=PC,out=out);
}

</code></pre>

* PICTURE

![PICTURE1](https://github.com/brian891005/co109a/blob/master/HW/%E5%9C%96%E7%89%87/32.jpg)
