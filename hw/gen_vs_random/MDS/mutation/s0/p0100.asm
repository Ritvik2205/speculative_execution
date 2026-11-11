.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and si, di
cmovnb rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or eax, -900576213
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
btc di, 164
or cx, 39
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rax, 1886208862
and dl, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovno dx, si
cmovle dx, ax
and sil, 74
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovno rcx, rdi
jmp .bb_0.2
.bb_0.2:
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
bts dword ptr [r14 + rdx], 2
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
