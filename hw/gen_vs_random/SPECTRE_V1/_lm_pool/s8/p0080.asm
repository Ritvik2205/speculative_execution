.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rcx, qword ptr [rdi]
sbb bl, -41
and cl, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -72
sub rdi, 7
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
js .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, 70
xor sil, -33
add bl, 70
xor sil, cl
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
