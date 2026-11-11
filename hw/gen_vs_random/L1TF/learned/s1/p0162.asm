.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
bt ecx, 1
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
lea rdx, qword ptr [rcx + rsi + 96]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
