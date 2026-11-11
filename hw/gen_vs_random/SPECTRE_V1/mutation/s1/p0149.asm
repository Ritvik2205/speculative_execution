.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
xchg dl, bl
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xchg cx, ax
or bx, si
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and dl, cl
lea rdx, qword ptr [rbx + rdx]
add edi, -91
add di, ax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
