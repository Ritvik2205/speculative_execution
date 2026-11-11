.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
xor al, dil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
xor ax, cx
btr rdx, 26
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rcx, rcx
bt cx, bx
xor al, al
and rax, 4
and cl, 91 # instrumentation
cmovle rdx, rdx
xor sil, bl
or dl, sil
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
