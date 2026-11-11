.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
lea rdi, qword ptr [rdx + rdi]
add cl, -127
lea di, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 80
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp di, 91
sub bl, dil
or ecx, 24
or rdx, 92
lea di, qword ptr [rsi + rcx]
and di, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
