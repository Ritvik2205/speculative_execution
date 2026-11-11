.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
xor al, sil
sbb al, -4
cmp al, 56
xor cl, sil
jmp .bb_0.1
.bb_0.1:
inc cl
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
lea rdx, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor dil, sil
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
