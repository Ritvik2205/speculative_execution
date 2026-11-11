.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, al
add cl, bl
and al, -54
sub dil, al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
test cl, -120
add al, -72
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
