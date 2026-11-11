.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and bl, sil
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, 13
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea bx, qword ptr [rdx + rsi]
xor al, bl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
test cl, -62
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
