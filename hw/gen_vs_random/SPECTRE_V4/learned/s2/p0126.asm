.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb bl, -75
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
bt rax, 59
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
adc al, 43
adc cl, -66
add al, -6
sub dl, al
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
dec al
cmovnp bx, si
test eax, 1600638830
or al, dil
xor ax, 13332
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
