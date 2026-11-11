.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
sub cx, 13
adc sil, -77
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
adc edi, 62
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
