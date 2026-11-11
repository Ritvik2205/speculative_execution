.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor cx, 113
test rax, rdi
test cl, 51
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and cl, sil
add sil, -61
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
