.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
mov al, dil
lea cx, qword ptr [rsi]
cmovs rax, rsi
mov esi, edx
lea esi, qword ptr [rbx + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
bswap rbx
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
adc cl, cl
lea edx, qword ptr [rdx + rax + 13]
btr cx, bx
adc rdx, 7
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
