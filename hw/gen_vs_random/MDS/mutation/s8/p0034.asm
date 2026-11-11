.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, edi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovle rcx, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and bl, dl
xor dl, al
cmovs bx, di
not dl
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
cmovnp rbx, rdi
cmovs rcx, rdi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
