.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
cmovnz bx, ax
test al, 40
xor bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and dil, -114
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
