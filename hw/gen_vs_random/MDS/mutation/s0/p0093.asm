.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 84
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor cl, 93
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
test cl, al
and bl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
or bl, 73
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
not si
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
xor rdi, rcx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
cmovb ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
