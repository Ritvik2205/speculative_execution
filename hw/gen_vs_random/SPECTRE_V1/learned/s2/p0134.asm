.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
lea rax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sub rcx, 13
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
