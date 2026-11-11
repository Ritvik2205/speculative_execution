.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
cmovnbe eax, edx
xor cl, dil
test al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
