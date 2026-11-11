.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb sil, bl
cmp rsi, 53
xchg al, cl
adc sil, -77
sbb edi, 99
mov dl, cl
cmp cl, 64
sbb cl, 105
xor sil, -33
add eax, 1938514106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
