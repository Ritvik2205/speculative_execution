.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
cmovp ebx, edi
xor cl, sil
sub rbx, 88
sub al, dl
lea edx, qword ptr [rbx + rdx + 69]
lea dx, qword ptr [rbx + rax]
add dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or al, -57
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
adc rdi, 127
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
lea cx, qword ptr [rax + rcx + 21]
movzx rax, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
