.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
inc dl
xor al, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
