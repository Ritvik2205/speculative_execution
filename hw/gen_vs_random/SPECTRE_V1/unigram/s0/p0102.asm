.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add al, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
cbw
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and bx, -118
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
sbb edx, 105
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rcx]
lea di, qword ptr [rcx + rbx]
adc ebx, 99
adc dx, -112
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
