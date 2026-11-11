.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz cx, ax
cmovnbe ax, bx
and dx, di
bt rsi, rcx
and di, cx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor sil, 49
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 64
or dx, 24
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
cmovs ax, si
xor dil, 9
and dl, -26 # instrumentation
cmovnp rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
