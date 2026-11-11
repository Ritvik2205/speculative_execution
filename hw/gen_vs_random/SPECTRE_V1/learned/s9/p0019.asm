.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
xor al, dl
add bl, 70
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg rdx, rbx
or esi, -74
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
