.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
xor al, al
bt ebx, edx
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
cmp ecx, 4
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 8
and si, 15
xor bx, di
test bl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and al, 93
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
cmovo di, di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
or rax, -285849275
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
