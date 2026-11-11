.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor bl, 38
or sil, al
test al, -70
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
