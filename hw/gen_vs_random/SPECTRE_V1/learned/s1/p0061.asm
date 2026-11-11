.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
sub al, sil
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
neg sil
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
adc rdx, 75
or bl, sil
add ax, 8031
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
