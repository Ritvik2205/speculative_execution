.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
or dl, al
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and dl, -109
or rcx, 89
xor ebx, 92
sbb edx, 105
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rcx + rax]
adc esi, -39
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
