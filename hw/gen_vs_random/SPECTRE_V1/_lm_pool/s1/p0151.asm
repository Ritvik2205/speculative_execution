.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
sbb bl, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
or edx, 11
lea dx, qword ptr [rcx + rsi]
test al, 42
add al, al
and cx, 18
xchg al, cl
add bl, sil
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
