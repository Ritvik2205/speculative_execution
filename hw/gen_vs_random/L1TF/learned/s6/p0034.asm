.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or dl, 8
test al, 15
test dil, sil
or sil, dl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
lea bx, qword ptr [rdx + rsi + 49]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
or rax, -443578116
and dx, 76
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
