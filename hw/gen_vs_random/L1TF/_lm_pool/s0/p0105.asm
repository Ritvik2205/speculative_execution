.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
xor rax, 20
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
xor bl, al
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
cmp dl, -93
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
add bl, dl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
or cx, 13
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
