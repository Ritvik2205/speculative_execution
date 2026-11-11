.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rcx + rax]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
