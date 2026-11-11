.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
cmovs rcx, rdi
cmovs bx, di
not dl
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
xor dl, cl
xor dl, al
and bl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
cmovnp rbx, rdi
test esi, edi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc edi, eax
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and edx, -44
and ax, 31082
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
