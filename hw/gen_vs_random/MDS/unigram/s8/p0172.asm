.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rax
btc cx, 115
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 47
btc rsi, rbx
and sil, -40 # instrumentation
cmovle di, si
cmovnbe bx, ax
cmovnp rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
xor di, 93
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovz eax, edi
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
btr dx, 47
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
btr cx, cx
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
