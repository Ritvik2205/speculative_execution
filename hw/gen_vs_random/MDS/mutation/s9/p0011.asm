.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor dl, cl
cmovle rcx, rax
cmovnp rbx, rdi
and bl, dl
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
test esi, edi
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
cmovs rcx, rdi
not dl
xor dl, al
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
