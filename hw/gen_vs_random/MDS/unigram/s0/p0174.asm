.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, si
test dx, 16353
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 80
test al, sil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
xor bx, 1
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
bt esi, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
cmovbe eax, ecx
or cl, dl
cmovl rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
