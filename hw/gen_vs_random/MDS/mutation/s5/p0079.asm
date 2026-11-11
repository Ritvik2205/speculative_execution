.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovs rcx, rdi
xor dl, al
and bl, dl
test esi, edi
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
cmovnp rbx, rdi
cmovs bx, di
cmovle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
