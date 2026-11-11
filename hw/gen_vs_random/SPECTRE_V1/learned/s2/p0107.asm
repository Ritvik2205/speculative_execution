.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1161451853
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmp cx, 88
add cl, dl
adc cl, dl
lea dx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
sub edi, 39
sbb al, dil
sbb bl, cl
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
