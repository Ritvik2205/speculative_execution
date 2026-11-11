.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
test al, 42
inc dl
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
