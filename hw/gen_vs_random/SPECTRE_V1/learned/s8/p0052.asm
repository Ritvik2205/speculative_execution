.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 70
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
sbb sil, -78
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test dl, 113
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
