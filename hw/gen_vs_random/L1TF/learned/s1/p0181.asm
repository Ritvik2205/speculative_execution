.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
or rcx, 33
test dl, 84
mov cl, dil
and ax, 26813
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
