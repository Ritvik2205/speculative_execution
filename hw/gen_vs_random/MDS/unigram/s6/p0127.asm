.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rdi, rdi
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
test di, 53
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
btr si, si
cmovnbe edi, ebx
or ax, 127
cmovno rbx, rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test cl, 0
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
bt di, ax
test di, si
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
bts esi, esi
xor dil, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
