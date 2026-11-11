.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
sub al, -1
lea ax, qword ptr [rbx + rdx + 32397]
lea cx, qword ptr [rdx + rsi + 20]
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 41
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
