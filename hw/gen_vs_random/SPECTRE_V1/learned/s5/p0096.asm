.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
bswap edx
sub al, dl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
sub al, cl
cmp dil, al
movsx bx, cl
sbb dl, cl
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
