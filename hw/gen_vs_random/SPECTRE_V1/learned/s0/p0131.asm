.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
