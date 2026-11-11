.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
xor rax, -773894210
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and dl, dl
and dl, 68 # instrumentation
cmovns ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
cmovs di, bx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
xor edx, 17
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
test cx, di
and bl, 65 # instrumentation
cmovnbe ax, dx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
