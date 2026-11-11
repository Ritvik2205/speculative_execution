.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
lea eax, qword ptr [rsi + rsi + 20]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 33
sub al, -3
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 16
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
