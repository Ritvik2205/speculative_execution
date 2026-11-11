.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or rbx, -77
cmovnl bx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or al, cl
or rax, -141551502
cmovbe eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
bts di, 37
jmp .bb_0.1
.bb_0.1:
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, -1931765367
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
btc rdi, rdi
or bl, -52
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
