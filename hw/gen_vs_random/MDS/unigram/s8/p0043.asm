.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
or bl, dl
cmovz di, bx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
test rdi, 22
and bx, dx
btr rsi, 146
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
or si, 0b1000000000000000 # instrumentation
bsf di, si
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and dil, 38 # instrumentation
cmovbe esi, edi
or esi, -110
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
