.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
lea rsi, qword ptr [rcx + rdi + 86]
lea ax, qword ptr [rcx + rbx + 26263]
sub dil, al
and al, 33
cmp cl, dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
xor al, dl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
