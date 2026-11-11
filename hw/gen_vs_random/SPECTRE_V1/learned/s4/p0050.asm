.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
add al, 10
sub si, 32
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
mov al, dl
adc sil, dl
jmp .bb_0.1
.bb_0.1:
add bl, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
mov dil, 77
cmp al, -77
cmovle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
