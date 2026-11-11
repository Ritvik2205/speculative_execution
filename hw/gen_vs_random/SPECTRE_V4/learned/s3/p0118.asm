.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 26
cmp al, dil
cmp cl, sil
add rax, 114
adc dil, bl
adc eax, -1127383570
btc rsi, rdi
test bl, al
xor dl, cl
cmp dl, bl
xor eax, 365940537
add dil, 105
test rcx, 63
adc bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
