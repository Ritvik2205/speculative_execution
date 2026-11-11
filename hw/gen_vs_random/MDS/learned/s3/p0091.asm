.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
or al, dl
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
test dil, 46
xor eax, 1640090871
xor sil, -46
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
bts rax, 77
or al, sil
btr cx, 136
or dil, cl
xor si, 91
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or bl, dl
jmp .bb_0.1
.bb_0.1:
or al, 25
and rdx, 100
sbb sil, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
