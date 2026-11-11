.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sbb al, -14
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 65
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
add al, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
seto bl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
