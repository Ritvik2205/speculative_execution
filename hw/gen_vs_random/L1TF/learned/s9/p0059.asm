.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
lea ebx, qword ptr [rdi]
sub dil, -70
lea rsi, qword ptr [rbx + rdi + 53]
jmp .bb_0.1
.bb_0.1:
add dl, -1
xor cl, al
lea si, qword ptr [rdx + rax]
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rbx + rcx + 55]
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
