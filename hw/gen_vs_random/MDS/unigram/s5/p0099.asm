.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 12
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
xor rdx, -59
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and bx, dx
xor sil, 94
btc rcx, 85
not rax
or rdi, 21
xor bx, 48
btr esi, edi
and bl, cl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
btr si, ax
bt rax, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
