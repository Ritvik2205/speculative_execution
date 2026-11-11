.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add bl, al
sub bl, cl
and sil, 37
or rax, 1808026647
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
add bl, cl
cmp al, 56
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
