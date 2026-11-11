.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
sbb al, bl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, dil
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
mov dl, sil
test al, -71
jmp .bb_0.4
.bb_0.4:
xor dl, cl
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 79
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
