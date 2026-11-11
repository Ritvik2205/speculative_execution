.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rcx + 83]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
