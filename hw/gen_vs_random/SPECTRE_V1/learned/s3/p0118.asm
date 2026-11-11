.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
sbb edx, -8
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 1
lea bx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
add ebx, -47
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 44
add ebx, -47
test al, -99
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
