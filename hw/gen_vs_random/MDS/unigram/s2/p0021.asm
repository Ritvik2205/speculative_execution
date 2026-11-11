.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
btc rdi, rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 41
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
xor rdi, -9
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and al, -83 # instrumentation
cmovnp rdx, rbx
cmovnb cx, si
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and dl, 46 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rsi, 19
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
