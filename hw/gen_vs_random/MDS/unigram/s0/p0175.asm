.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -59 # instrumentation
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 48
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and cl, 11 # instrumentation
cmovp ebx, edi
test bl, cl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor rax, 459999114
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
xor sil, dil
or cl, 6
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovno rdi, rdi
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
btc edi, 230
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
cmovs rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
