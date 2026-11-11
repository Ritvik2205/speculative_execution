.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe di, dx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or al, -5
sub al, -3
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
xor al, 89
or rdi, 58
sbb cx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
