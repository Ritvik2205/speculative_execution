.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
or rax, rbx
and bl, -75 # instrumentation
cmovp ebx, ebx
btc esi, 199
and al, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor bl, -27
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and al, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
cmovns si, cx
and al, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
xor bl, -88
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
xor dl, -19
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 63
or al, cl
cmovo bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
