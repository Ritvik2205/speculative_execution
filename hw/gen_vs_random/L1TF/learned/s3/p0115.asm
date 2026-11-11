.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, dx
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
test sil, 29
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
adc cl, -34
test rdx, rsi
add al, al
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
