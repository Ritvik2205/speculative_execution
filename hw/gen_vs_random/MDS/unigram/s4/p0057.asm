.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
or dl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and dil, cl
bts rax, rdi
btr edi, 221
and dl, 120 # instrumentation
cmovnz ecx, edx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 97
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
and sil, dil
btc rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
