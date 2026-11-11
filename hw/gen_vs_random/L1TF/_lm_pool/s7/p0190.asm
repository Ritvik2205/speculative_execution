.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 21
sub cl, 86
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ebx, 95
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub ax, -3178
and al, -68
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
