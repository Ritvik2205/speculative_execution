.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 254
cmovnp rbx, rdx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 48
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
btr si, 42
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and dl, -49 # instrumentation
cmovno dx, di
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 78
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
not ecx
cmovz rdx, rax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 86
or dl, -115
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 30
cmovbe ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
