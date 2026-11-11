.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
adc dil, 112
add al, -3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
sub al, 54
and eax, 1913354318
adc edi, -83
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
sbb al, -3
and al, 100
sbb sil, -124
dec cl
add al, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
