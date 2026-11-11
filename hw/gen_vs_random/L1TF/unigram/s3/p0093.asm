.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
add bl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 33
sbb sil, dl
and eax, -409673666
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
cmp dl, dil
not bx
add dl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 89
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
lea ecx, qword ptr [rax + rax]
btr eax, 47
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
