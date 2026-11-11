.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
cmp rax, 1138518729
jmp .bb_0.1
.bb_0.1:
or dil, cl
and al, -68
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
xchg eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
