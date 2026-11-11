.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
or al, dil
cmovnz rbx, rax
add al, 18
xor bl, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
btr ebx, 80
sbb sil, al
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
