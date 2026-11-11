.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
or cl, 119
and sil, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and ax, 31082
btr si, bx
and rcx, -63
and ax, -12519
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, 65
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
test dl, sil
or sil, -78
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
