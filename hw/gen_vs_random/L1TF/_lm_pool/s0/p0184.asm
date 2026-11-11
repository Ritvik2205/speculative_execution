.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
test cl, 59
test al, -104
cmovbe esi, edi
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
jmp .bb_0.1
.bb_0.1:
and sil, 93
cmp dl, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
