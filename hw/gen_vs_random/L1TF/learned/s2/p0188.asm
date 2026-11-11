.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
xor sil, 64
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
cwde
lea edx, qword ptr [rdx + rcx + 64]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
inc eax
adc dil, 120
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
