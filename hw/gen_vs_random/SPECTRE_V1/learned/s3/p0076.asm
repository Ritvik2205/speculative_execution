.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
test al, 48
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sub dil, -32
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
cmp dil, -78
adc cl, -19
mov dl, sil
and ax, -22629
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
