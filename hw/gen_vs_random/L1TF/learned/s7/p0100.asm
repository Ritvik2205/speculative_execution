.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
cmp rax, 1138518729
xor dil, -42
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
add cl, 88
or rdi, 41
sbb al, 92
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
