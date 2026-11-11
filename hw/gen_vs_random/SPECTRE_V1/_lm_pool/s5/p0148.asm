.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, -273199823
xor cl, bl
cmp cl, dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dl, cl
xor dl, bl
jmp .bb_0.2
.bb_0.2:
test cl, -24
xchg dl, dil
sbb dil, -106
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
