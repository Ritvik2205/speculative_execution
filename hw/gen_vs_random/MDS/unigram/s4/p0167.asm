.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test dil, sil
and bl, bl
bts rdi, 130
cmovz bx, di
and bl, bl
jmp .bb_0.1
.bb_0.1:
and di, di
xor al, cl
cmovnp ax, di
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
cmovnle di, bx
and dl, 120 # instrumentation
cmovnle dx, bx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and bl, -5 # instrumentation
cmovnl di, bx
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
