.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
xchg esi, ebx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 18
inc cl
xor al, -42
sub dil, al
xchg sil, dil
test cl, -24
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
add dil, sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and dil, -114
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
