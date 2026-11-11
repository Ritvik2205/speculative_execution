.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, 49 # instrumentation
cmovbe rax, rcx
test cl, dl
not dl
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovns rdi, rdx
bts edi, 248
bt rax, rsi
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
xor rdi, -9
cmovle rsi, rbx
cmovnbe eax, edi
jmp .bb_0.2
.bb_0.2:
and cl, 123 # instrumentation
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
cmovno rdi, rbx
cmovns bx, di
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
btr rcx, rdi
or rdi, 21
xor eax, 571592471
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
btc eax, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
