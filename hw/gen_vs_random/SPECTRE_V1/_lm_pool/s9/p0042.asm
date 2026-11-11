.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
mov cl, al
sbb al, sil
lea rsi, qword ptr [rdi + rdx + 64]
and sil, 111
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
and al, 33
add al, dl
bswap rdx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
