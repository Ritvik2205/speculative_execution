.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or al, cl
cmovnl di, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
bts cx, 177
and bl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
cmovnb di, bx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
btc rdi, rdi
or bl, 43
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
bts rsi, 205
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and dil, -39
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
xor al, bl
btc esi, ebx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
and al, 61 # instrumentation
cmovl di, ax
btc bx, cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
