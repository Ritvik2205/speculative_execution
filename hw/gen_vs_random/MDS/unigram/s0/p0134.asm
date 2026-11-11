.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and sil, dil
or bl, dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
or ax, -11837
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
cmovz ax, ax
jmp .bb_0.1
.bb_0.1:
btr edx, edx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
cmovnp bx, bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 13
bt dx, di
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
cmovle ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
