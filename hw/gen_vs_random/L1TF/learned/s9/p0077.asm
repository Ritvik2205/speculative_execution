.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 67
xor al, 89
xor eax, 965442135
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, -109
add cl, 88
test bl, -92
adc al, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 61
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
