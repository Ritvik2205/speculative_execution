.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test eax, 343548072
xor dl, al
or bl, sil
cmovb rcx, rdi
or cl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or esi, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
cmovnp eax, edx
jmp .bb_0.1
.bb_0.1:
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
btc word ptr [r14 + rbx], 2
btr rcx, rdi
or rdi, 21
xor eax, 984871847
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
btc eax, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
