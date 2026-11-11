.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and dl, 10
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add ax, 116
add cl, dil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
test ax, 7679
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
