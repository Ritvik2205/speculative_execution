.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
lea ax, qword ptr [rax + rsi]
sbb ebx, 9
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add sil, 42 # instrumentation
lea ecx, qword ptr [rsi + rcx]
lea eax, qword ptr [rax + rsi + 86]
btc dx, bx
jmp .bb_0.2
.bb_0.2:
test dl, -37
sbb al, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
