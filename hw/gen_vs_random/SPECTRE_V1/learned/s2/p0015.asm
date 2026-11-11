.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 91
and bl, sil
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
sub dl, 96
sub al, bl
sbb dil, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and cl, -57
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rax + rdi]
inc edx
lea rbx, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
