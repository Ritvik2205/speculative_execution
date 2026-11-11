.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
adc cl, sil
xor al, -89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and al, -54
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
lea rdi, qword ptr [rbx + rsi]
or ebx, -124
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
