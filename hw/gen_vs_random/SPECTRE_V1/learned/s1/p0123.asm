.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
sbb bl, dil
sub al, -89
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
adc dl, sil
adc al, -82
cmp ax, 7046
xor cl, 71
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
