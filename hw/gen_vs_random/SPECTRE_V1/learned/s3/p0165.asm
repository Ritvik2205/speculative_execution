.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 77
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, 32
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
mov al, cl
sub sil, al
or esi, -74
and al, -54
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
