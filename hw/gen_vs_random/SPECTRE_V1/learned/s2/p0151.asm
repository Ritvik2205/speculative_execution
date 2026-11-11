.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dil, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
sbb edx, 105
lea si, qword ptr [rdi + rcx + 87]
lea di, qword ptr [rdx]
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
xchg bl, dil
lea si, qword ptr [rdx + rax + 3]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
