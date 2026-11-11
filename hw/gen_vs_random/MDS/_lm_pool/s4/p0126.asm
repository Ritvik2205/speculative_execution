.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, bx
test cl, 73
and eax, -574348013
xor bl, -27
and sil, -9
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor cl, 98
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
xor dx, 77
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or al, cl
test dl, sil
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or rsi, 94
and al, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
