.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
add rax, 909978580
test dil, -126
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 93
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 95
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
