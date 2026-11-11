.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
test dil, -126
bts ecx, 164
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
btr dx, si
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 95
xor bl, cl
sbb sil, al
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
