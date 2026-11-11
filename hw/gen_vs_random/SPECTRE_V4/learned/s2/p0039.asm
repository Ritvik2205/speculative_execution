.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 98
xor sil, 69
or dil, -104
and al, dil
btc rsi, rdx
sub dl, cl
sub bl, dl
sbb al, -39
or cl, dl
and al, 41
sbb al, 102
sub al, dl
adc cl, al
sub al, 86
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
