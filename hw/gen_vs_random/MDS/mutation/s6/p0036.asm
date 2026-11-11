.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -270810088
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
cmovs di, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and bl, 65 # instrumentation
cmovnbe ax, dx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
xor edx, 94
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and dl, 68 # instrumentation
cmovns ax, dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
test cx, di
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
