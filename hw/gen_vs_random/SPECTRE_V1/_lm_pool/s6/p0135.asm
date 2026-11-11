.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
setb dl
cmp cl, 61
lea rcx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
adc esi, -39
and al, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 65
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
