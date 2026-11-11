.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
xor rax, -2072052278
sbb al, sil
sub rsi, 90
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
sbb sil, bl
sbb cl, dl
xor bl, dl
add ecx, 48
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
lea rcx, qword ptr [rbx]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
