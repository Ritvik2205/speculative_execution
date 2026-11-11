.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
adc sil, -77
sub al, dil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
cmp rdx, -19
lea ecx, qword ptr [rax]
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
