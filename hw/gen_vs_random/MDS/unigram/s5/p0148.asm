.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 63
and sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
bt eax, edi
bts dx, bx
cmovle si, di
cmovbe ax, si
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
cmovnp di, bx
bts ebx, 205
btr dx, 47
xor dil, sil
or rbx, -72
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
cmovz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
