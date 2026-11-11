.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
lea ebx, qword ptr [rdi + rdi + 21]
sub dil, -70
add ax, 23614
cmovle rax, rdi
test bl, 84
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
xor cl, 89
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
sbb al, cl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
xchg ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
