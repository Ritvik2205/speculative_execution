.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
or rsi, -119
sub dil, -32
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
lea dx, qword ptr [rax + rcx + 47]
and rax, 1713273566
xor dl, al
adc dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
