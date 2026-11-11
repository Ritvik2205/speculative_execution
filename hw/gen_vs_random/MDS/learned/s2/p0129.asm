.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, 93
not si
test cl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
or bl, 84
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
or sil, -8
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
cmovo rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
