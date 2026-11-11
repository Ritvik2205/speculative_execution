.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 53
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 55
or al, -5
and sil, 37
and bl, 89
xor al, bl
jmp .bb_0.1
.bb_0.1:
add dl, -56 # instrumentation
cmovs rsi, rbx
xor dil, -42
setle dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
