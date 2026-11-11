.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 8
or al, dl
xor sil, 110
or cl, 30
xor sil, al
and cl, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
bt cx, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
jmp .bb_0.1
.bb_0.1:
or bl, cl
xor dx, 53
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
