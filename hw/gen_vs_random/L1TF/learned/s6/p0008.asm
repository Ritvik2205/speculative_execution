.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rdx, qword ptr [rbx + rdi + 32]
jmp .bb_0.1
.bb_0.1:
xor al, 16
and bl, 89
jmp .bb_0.2
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
cmovp ax, bx
cmovbe eax, ebx
sub rdi, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
