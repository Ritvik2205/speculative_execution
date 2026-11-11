.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
lea ebx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and bl, dl
test dil, -126
xor dil, bl
test bl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 54
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
xor dl, 19
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
