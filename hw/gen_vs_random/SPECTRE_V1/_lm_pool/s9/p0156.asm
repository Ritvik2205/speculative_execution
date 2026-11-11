.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
sub cl, bl
add ebx, -116
jmp .bb_0.1
.bb_0.1:
or al, bl
lea rcx, qword ptr [rax + rbx + 46]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
test dl, -36
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
