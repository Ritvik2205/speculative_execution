.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 23
add dl, 47
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
