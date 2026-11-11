.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
bt ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
bt ax, si
xor rax, -1657511731
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
xor sil, 94
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
and dl, -73
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 71
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or bl, 43
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
