.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
lea rcx, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
test al, -32
jmp .bb_0.1
.bb_0.1:
test sil, al
xor cl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
