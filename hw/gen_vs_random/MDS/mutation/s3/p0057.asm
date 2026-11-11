.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
xor rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
xor cl, -79
or bl, 84
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
test cl, al
not si
cmovb ecx, edi
and bl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
or bl, -98
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
