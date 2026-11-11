.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
test ecx, 1044879383
and dl, 60 # instrumentation
cmovno esi, esi
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
xor cl, sil
xor rsi, rcx
cmovnp ax, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
jmp .bb_0.1
.bb_0.1:
and di, cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and dl, 60 # instrumentation
cmovno edi, edi
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
xor rdx, 7
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
cmovnl ecx, eax
or cl, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
