.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
sub sil, -18
xor bl, -38
sub dl, -48
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sbb cl, bl
xchg al, bl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
