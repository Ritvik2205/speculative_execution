.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax + rsi]
adc bl, -14
sbb edi, 10
sbb bx, 1
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
test rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
not cl
or edi, esi
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
bt rdi, 18
add dil, -7
add dl, sil
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
