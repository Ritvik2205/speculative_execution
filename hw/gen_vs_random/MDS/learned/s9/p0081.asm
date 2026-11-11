.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -71
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
test al, 91
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor sil, 94
bts rax, 77
test sil, -55
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test al, dil
and dil, sil
bt ecx, edx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
cmovno rcx, rax
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
