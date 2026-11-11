.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -71 # instrumentation
adc ebx, ebx
lea ax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or dil, -113
jmp .bb_0.1
.bb_0.1:
test al, -56
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 59
sub dl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
