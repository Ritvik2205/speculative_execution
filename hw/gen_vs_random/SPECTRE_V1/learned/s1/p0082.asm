.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
sub al, bl
sub al, al
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
mov cl, dl
sbb al, 104
and bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
sub al, sil
and ax, -22629
add sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
