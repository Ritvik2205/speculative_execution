.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
bts eax, 222
test dl, 27
test cl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or bl, bl
or bl, -54
test al, 127
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test bl, sil
and dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and cl, cl
bt si, bx
and cl, dil
and bx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
