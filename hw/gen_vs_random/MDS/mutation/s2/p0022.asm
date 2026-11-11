.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
btc esi, ebx
btc bx, cx
and al, 61 # instrumentation
cmovl di, ax
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
bts rsi, 206
xor al, bl
xor rbx, 89
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or bl, 100
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
btc rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
