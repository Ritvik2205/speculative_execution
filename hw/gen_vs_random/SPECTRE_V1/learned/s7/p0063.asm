.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 13
adc cx, -30
sbb cl, dil
test bl, -8
cmp rcx, 5
lea bx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
