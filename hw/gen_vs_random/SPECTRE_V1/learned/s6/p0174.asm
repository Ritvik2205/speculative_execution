.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sbb al, dil
adc dil, 64
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 30
and bl, 124
sbb al, -14
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
lea rdi, qword ptr [rax + rcx + 94]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
