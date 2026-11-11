.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rcx, rdi
cmovnp rbx, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test esi, edi
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
cmovle rcx, rax
not dl
and bl, dl
xor dl, al
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and al, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
