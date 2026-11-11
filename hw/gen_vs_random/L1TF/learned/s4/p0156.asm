.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
mov dil, sil
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg si, cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 9]
setnp cl
add al, 31
dec cl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
movzx rax, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor edi, 48
lea ax, qword ptr [rcx + rax]
bt si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
