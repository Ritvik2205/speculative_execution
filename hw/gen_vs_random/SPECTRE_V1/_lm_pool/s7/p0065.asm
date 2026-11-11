.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, bl
cmp edi, 5
test cl, -24
test dl, -7
lea si, qword ptr [rsi + rbx + 12]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
mov al, bl
lea rax, qword ptr [rdi + rbx + 51]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
