.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
sbb al, -107
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
add sil, -68
sub dl, dil
adc bl, dl
and al, -23
add bl, dl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
