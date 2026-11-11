.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 12
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
cmovle cx, ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
sub sil, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
cmovno di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
