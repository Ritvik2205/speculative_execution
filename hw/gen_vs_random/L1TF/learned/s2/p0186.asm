.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rsi, rdx
cmp bx, -21
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
