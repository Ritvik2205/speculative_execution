.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
test sil, 97
sub al, dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
cmp cl, 75
add al, al
lea di, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
test cl, dil
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
