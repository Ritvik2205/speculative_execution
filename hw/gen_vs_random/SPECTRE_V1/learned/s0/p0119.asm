.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
dec dl
sbb eax, 100
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edi, ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
add dil, 72
sbb al, dil
adc dx, -112
add al, -109
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
