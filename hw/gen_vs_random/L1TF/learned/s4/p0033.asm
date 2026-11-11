.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 97
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
or si, si
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 69
sub al, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
