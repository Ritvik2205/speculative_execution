.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi + rsi + 19]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
