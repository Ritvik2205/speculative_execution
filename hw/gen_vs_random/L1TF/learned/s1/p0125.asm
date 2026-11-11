.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
test edx, 1891691791
add cl, al
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 19
adc bl, 86
lea bx, qword ptr [rsi + rdi + 35]
sub cl, sil
lea ax, qword ptr [rsi + rdi + 80]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sbb sil, -19
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
