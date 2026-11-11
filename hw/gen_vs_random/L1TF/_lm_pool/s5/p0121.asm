.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
xor dl, al
test cl, 21
lea rax, qword ptr [rdi + rdx]
xor dil, cl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
btc bx, cx
xor bx, 97
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 3
cmovle di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
