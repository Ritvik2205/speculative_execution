.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
lea rax, qword ptr [rsi + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
mul rax
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsf ax, si
add sil, dil
and di, 54
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
cdq
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
lea cx, qword ptr [rdx]
inc edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
