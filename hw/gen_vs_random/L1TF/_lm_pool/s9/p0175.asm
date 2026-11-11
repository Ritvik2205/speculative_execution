.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 1
test dl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 76
xor cl, al
sbb dil, al
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
