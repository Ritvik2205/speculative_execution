.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and al, -23
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
bt ecx, 204
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 34
sub rsi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
