.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
sub al, 63
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
or al, 19
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
sub dil, cl
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
mov cl, sil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
