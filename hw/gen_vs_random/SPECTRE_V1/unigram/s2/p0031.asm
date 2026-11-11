.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, al
xor rbx, 87
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
add cl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
adc bl, 27
bts rdx, rdi
lea rdx, qword ptr [rax + rcx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
