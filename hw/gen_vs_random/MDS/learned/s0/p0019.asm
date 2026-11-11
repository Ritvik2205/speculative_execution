.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and dl, -26 # instrumentation
cmovnp rax, rdx
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
bts rax, 117
or cl, 10
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
xor cl, cl
bts rax, 117
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
or rax, -285849275
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
