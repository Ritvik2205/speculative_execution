.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
sbb dl, dil
lea ax, qword ptr [rbx + rdi + 36]
sbb dl, al
xchg sil, cl
lea bx, qword ptr [rax]
and dil, cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
test rdi, -1846965753
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
