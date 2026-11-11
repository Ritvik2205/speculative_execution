.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp dil, sil
add cl, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
xor di, 31
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xchg bl, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
sbb dl, cl
and sil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
