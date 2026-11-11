.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, edx
sub al, 9
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and ax, 7954
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rbx + 78]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
xor dil, cl
cmp cl, 57
jmp .bb_0.3
.bb_0.3:
lea esi, qword ptr [rdi]
test al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
