.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
add dil, dil
xor dl, 71
sub sil, dl
add al, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
sub si, 32
and al, -54
btc edx, 169
sub di, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
