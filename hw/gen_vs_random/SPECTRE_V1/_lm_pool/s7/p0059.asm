.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, 80
test sil, dil
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 65
and cl, 86
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 67
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and sil, 111
add al, 3
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, -18
sbb eax, 2098460225
adc dil, 27
test di, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
