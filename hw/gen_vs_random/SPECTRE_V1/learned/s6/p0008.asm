.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
sbb cl, dl
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rcx + rax + 53]
lea bx, qword ptr [rax + rcx + 52]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, sil
cmp esi, 57
adc cl, -81
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
