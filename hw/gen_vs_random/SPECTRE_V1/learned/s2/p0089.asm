.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
adc cl, -19
sub sil, -18
and si, 46
cmp cl, bl
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
cmp sil, 25
test al, 48
xchg dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
