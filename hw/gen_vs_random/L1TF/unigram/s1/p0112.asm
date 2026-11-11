.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -92 # instrumentation
setnz al
seto cl
lea edx, qword ptr [rsi + rbx + 75]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
btc rdx, 152
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add al, 39 # instrumentation
lea ax, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rsi + rax + 87]
imul rdi, rbx, 33
xchg rax, rdx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
test cx, bx
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
mov sil, 40
cmovo rdx, rbx
setp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
