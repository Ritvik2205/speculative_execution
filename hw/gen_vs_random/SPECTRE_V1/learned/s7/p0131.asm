.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 30
test cl, -24
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
add edi, -91
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
xchg bl, cl
test dil, -116
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
cmp ax, 7046
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
