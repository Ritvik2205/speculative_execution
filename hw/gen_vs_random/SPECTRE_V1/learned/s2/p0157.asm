.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
sbb eax, -417098439
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or dil, 98
or ax, 18658
mov al, bl
add dil, -75
sub sil, cl
sbb al, 66
sbb cl, dl
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
