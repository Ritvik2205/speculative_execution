.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rsi + rcx + 35]
cmp rdx, 61
adc dil, 120
lea cx, qword ptr [rbx + rsi + 48821]
lea dx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rcx + rbx]
or bl, -88
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
