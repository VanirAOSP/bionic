#include <machine/asm.h>
ENTRY(modf)
    push        {r4, r5, r11, lr}
    mov         r5, r1
    movw        r3, #1023
    ubfx        r1, r5, #20, #11
    vmov        d16, r0, r5
    sub         r3, r1, r3
    movw        r1, #65535
    movt        r1, #15
    lsr         r1, r1, r3
    and         r3, r1, r5
    orrs        r0, r3, r0
    mov         r0, #0
    bic         r1, r5, r1
    vmov        d17, r0, r1
    vsub.f64    d16, d16, d17
    vstr        d16, [r2]
    vmov.i32    d17, #0x0
    vdiv.f64    d16, d17, d16
    vmov        r0, r1, d16
    pop         {r4, r5, r11, pc}
    movw        r3, #1043
    sub         r1, r1, r3
    mvn         r3, #0
    lsr         r1, r3, r1
    tst         r1, r0
    bic         r4, r0, r1
    vmov        d17, r4, r5
    vsub.f64    d16, d16, d17
    strd        r4, r5, [r2]
    vmov        r0, r1, d16
    pop         {r4, r5, r11, pc}
    mov         r0, #0
    and         r1, r5, #-2147483648
    vmov        d17, r0, r1
    vstr        d16, [r2]
    vorr        d16, d17, d17
    vmov        r0, r1, d16
    pop         {r4, r5, r11, pc}
    mov         r0, #0
    and         r1, r5, #-2147483648
    strd        r0, r1, [r2]
    vmov        r0, r1, d16
    pop         {r4, r5, r11, pc}
    and         r0, r5, #-2147483648
    mov         r1, #0
    vmov        d16, r1, r0
    vmov        r0, r1, d16
    pop         {r4, r5, r11, pc}
END(modf)
