.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 44
and dx, 71
xchg cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
lea bx, qword ptr [rax + rax + 44]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
cmovnp rax, rbx
jmp .bb_0.1
.bb_0.1:
add dl, 22
and cx, si
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
lea rsi, qword ptr [rax]
add bl, 113 # instrumentation
setbe bl
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
