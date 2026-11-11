.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
sub dl, 96
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 85
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
test cl, -33
and sil, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
