.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 34
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
not sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and sil, -56
and rdi, 27
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor dil, bl
test al, 66
or al, -78
or al, dil
and bl, 68
or cx, 39
btc di, 233
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
