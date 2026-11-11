.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, -11439
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
adc eax, -655457029
sbb edx, -8
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
