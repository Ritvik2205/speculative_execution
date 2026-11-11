.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
btc bx, cx
btc esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
or bl, 43
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
bts rsi, 221
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
xor rbx, 89
xor al, bl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and dil, -39
and al, 61 # instrumentation
cmovl di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
