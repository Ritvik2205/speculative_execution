.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
adc ax, -27488
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or dl, 41
xor cl, sil
add al, dil
lea bx, qword ptr [rcx + rdx + 86]
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
test al, -99
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 67
sub cl, -21
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
