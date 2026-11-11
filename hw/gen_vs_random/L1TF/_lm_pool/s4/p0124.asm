.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 26
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
sub dil, 87
sub dl, 105
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
sub al, -75
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and ax, 37
jmp .bb_0.2
.bb_0.2:
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
