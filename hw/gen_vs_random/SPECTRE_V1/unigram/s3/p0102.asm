.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 87
sub ax, 124
setnz sil
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
not bx
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 15
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
