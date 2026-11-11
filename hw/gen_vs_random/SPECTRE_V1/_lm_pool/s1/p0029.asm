.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
lea ecx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
sbb al, 49
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
