.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 75
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 60
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
cmovnbe ax, si
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
xor esi, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
