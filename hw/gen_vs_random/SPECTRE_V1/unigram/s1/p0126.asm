.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, -93
cmovl ax, si
and dl, dil
sub cx, 23
adc cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
lea rbx, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub sil, -18
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
adc bl, cl
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
lea dx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
lea rbx, qword ptr [rax + rbx + 29]
add al, -84 # instrumentation
lea eax, qword ptr [rdx + rdx + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
