.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and si, 10
movsx esi, al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
cmovb ax, bx
cmovbe eax, ebx
test cl, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
