.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, si
lea rsi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
xchg dil, cl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb eax, 100
lea cx, qword ptr [rdx]
adc sil, -77
adc al, -82
lea rbx, qword ptr [rdx + rax + 61]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
