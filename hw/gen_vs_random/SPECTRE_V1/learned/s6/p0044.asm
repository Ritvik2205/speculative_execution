.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jno .bb_0.2
jmp .exit_0
.bb_0.2:
inc dil
sbb al, 49
add al, bl
mov dil, cl
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
