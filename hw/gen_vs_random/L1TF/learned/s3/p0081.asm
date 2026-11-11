.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
neg dl
lea edx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
cmovno ax, cx
jmp .bb_0.2
.bb_0.2:
xchg esi, ecx
xor eax, -69
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
or ax, -18131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
