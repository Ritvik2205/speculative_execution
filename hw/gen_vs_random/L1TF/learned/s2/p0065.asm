.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
test dl, 84
cmovb rsi, rdi
and sil, dil
jmp .bb_0.1
.bb_0.1:
test dl, 84
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
