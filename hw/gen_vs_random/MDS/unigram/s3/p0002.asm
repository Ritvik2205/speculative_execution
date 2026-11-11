.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and cl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and dl, -107 # instrumentation
cmovz rcx, rdx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 93
test dil, al
bts rsi, rcx
and al, -56 # instrumentation
cmovl rdx, rcx
cmovno ebx, eax
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and ax, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 90
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 78
and al, -2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and dl, -107 # instrumentation
cmovz rax, rdx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
