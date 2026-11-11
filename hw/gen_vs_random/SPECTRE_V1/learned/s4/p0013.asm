.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
sbb al, cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and dil, -93
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
sbb sil, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add edx, 83
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
