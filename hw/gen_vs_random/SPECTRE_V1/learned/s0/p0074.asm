.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, sil
sbb al, sil
xor esi, 106
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub rcx, 13
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
inc eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
