.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rcx, rsi
cmovnbe edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and cl, sil
bt edx, ecx
xor sil, bl
test sil, sil
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
bt edi, edx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
cmovz esi, ebx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
bts si, 205
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
