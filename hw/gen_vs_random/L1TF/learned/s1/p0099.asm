.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xor al, sil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
lea dx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
test dl, 84
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
