.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test dx, cx
or sil, al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or al, -61
test cl, 73
xor bl, sil
or al, 30
test dil, al
btr dx, di
xor dil, -70
and ax, 27170
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or sil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
