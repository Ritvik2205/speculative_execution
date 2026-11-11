.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 74
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test cl, bl
or al, -24
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and sil, -69
bt ebx, esi
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
test dl, 9
and ax, 31082
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
xor bl, sil
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
