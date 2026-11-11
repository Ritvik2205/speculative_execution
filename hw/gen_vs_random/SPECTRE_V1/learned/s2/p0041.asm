.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sbb sil, dil
xchg al, bl
xor dl, al
lea rdx, qword ptr [rbx + rdi + 32]
jmp .bb_0.1
.bb_0.1:
mov bl, cl
sub al, cl
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
