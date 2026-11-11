.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
xor rax, -345061362
btr cx, si
or al, sil
or rbx, -77
test sil, 41
xor dx, 69
or al, sil
xor al, bl
or al, 25
or cl, 7
test cl, -18
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
