.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
sub al, -66
sub bl, dil
sub dil, -32
lea rax, qword ptr [rdi]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
xor cl, -40
sbb cl, dil
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
xchg ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
