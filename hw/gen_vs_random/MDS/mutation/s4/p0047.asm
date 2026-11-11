.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and al, 61 # instrumentation
cmovl di, ax
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
btc esi, ebx
and dil, -39
or bl, -125
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
btc bx, cx
bts rsi, 206
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
