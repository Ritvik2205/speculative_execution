.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
test al, 84
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, dl
adc dil, al
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
mov al, dl
setp dil
add dil, 72
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
or dl, 41
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
