.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 89
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
cmovnbe rdi, rdi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 41
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
and bx, 71
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
test sil, dil
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or si, ax
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
