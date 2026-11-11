.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
or dl, al
adc bl, al
btc bx, cx
xor al, 45
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
test ax, 13879
jmp .bb_0.2
.bb_0.2:
lea edx, qword ptr [rcx]
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
