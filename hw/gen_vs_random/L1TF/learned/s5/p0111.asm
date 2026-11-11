.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub al, 26
and sil, -90
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
xchg ebx, esi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
