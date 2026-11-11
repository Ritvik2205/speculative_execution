.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and ax, -16061
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor sil, 27
test cl, 101
xor bl, sil
test rcx, -613256812
and rsi, 28
test cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
or rax, -689609688
xor cl, 15
test al, 127
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
