.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea bx, qword ptr [rdx + rcx]
xor sil, dl
lea rbx, qword ptr [rdx + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 70
xor al, -74
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
