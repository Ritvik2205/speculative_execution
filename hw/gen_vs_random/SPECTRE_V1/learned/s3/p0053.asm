.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edx, qword ptr [rsi + rax + 41]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test al, 59
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
mov dl, al
lea bx, qword ptr [rdx]
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
