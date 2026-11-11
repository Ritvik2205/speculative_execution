.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 25
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
add al, sil
and dl, -92
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
sub dl, 71
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
