.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or bl, -54
bts rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
or di, 98
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jmp .bb_0.1
.bb_0.1:
cmovns eax, ecx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
bt rax, rsi
and dil, -39
btr si, bx
xor dl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and dx, bx
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
