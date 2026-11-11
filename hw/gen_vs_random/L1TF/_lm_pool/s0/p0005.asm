.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
adc cl, sil
or rax, 699028911
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
sub dl, -34
or dil, -113
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rcx + rdx + 90]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
lea bx, qword ptr [rdx]
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
