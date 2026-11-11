.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
lea rax, qword ptr [rsi + rbx + 18]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
sub sil, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sub rbx, -11
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and ax, 23118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
