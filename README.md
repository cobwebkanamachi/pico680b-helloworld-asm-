picobug (https://github.com/simple-circuit/picobug) is great one.
I did misc test on picos(genuin pico and rp2040).
I report these here.

1. HELLO WORLD (asm)
   as0.exe downloaded from 
   https://deramp.com/downloads/swtpc/software/6800%20Cross%20Assembler%20(Windows)/
   nop(s) are needed to wait zero flag polls.
   d.s19 is output of as0.exe
   to exec this: J 0100
3. ALTAIR BASIC run(procedure to run only)<PRE>
   download this s19 https://deramp.com/swtpc.com/Altair/MITS_RAW.TXT
   edit Srecord only
   change lf to crlf
   attach pico to usb and open teraterm or simbleCRT.exe
   put L command to picobug
   send file (converted) to pico
   after upload put J 0000
   PUT Enter to console
   PUT 80 to console
   PUT Y to console
   MITS ALTAIR 680 BASIC VERSION 1.1 REV 3.2 reveals
   like this bellow.
   >J 0000
   MEMORY SIZE?
   TERMINAL WIDTH? 80
   WANT SIN-COS-TAN-ATN? Y
   50906 BYTES FREE
   MITS ALTAIR 680 BASIC VERSION 1.1 REV 3.2
   COPYRIGHT 1976 BY MITS INC.
   OK
   PRINT(1+4)
   5
   OK
   </PRE>
5. figforth run
   NOTICE: SHOULD ALWAYS CAPs ON! to use picobug(monitor)
   <PRE>
   >J 1000
   Forth-68
   OK
   1 3 + . 4  OK
   2 9 * . 18  OK
   </PRE>   
   
Enjoy!
