.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmovbe edi, edi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
btr bx, dx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
btr esi, ebx
and bl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, 17 # instrumentation
cmovnp esi, edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and cl, -103 # instrumentation
cmovns ecx, ecx
jmp .bb_0.2
.bb_0.2:
and cl, 84 # instrumentation
cmovbe cx, ax
cmovns cx, bx
bt rbx, rbx
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
cmovo rax, rax
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and cl, -44 # instrumentation
cmovno rdi, rbx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or dl, cl
bt eax, 37
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
