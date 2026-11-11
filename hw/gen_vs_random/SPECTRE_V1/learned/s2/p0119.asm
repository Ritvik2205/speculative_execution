.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -71
cmp rax, -1877933118
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
cmp al, 23
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 42
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
xchg rax, rsi
add cl, -127
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
