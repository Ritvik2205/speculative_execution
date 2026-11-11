.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
and al, 14
not sil
jmp .bb_0.1
.bb_0.1:
test bl, 65
xor bx, 68
and sil, bl
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
jmp .bb_0.2
.bb_0.2:
or sil, dil
or bl, al
xor bl, sil
xor cl, 24
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
