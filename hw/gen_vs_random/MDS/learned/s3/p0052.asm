.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
dec bl
btr di, 199
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
cmovle esi, edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
cmovnp rdx, rdi
xor si, dx
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
xor ax, 24729
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
btr bx, cx
xor bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
