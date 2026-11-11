.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
sbb dil, cl
xchg dl, bl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, cl
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
or bx, si
add edi, -91
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
xchg cx, ax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
add di, ax
lea rdx, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
