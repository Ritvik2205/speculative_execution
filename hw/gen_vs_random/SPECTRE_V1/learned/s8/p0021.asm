.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
lea ax, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
sub dil, -32
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, -1628299544
inc edx
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
lea rdi, qword ptr [rsi + rdx + 64]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 67
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
