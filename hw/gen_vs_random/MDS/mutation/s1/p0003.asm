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
bts dword ptr [r14 + rdx], 6
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
and cl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
or dx, 125
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovle ax, si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or al, -78
cmovnbe bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
