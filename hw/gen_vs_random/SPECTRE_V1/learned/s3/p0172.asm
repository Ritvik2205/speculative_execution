.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add al, -44
adc eax, -655457029
cmp sil, al
test dl, -7
xor cl, al
mov bl, dil
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
