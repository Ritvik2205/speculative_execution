.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edx, qword ptr [rdi + rax + 23]
cmp rcx, 60
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, -1161451853
add ax, 6980
sbb dl, 127
sub dl, cl
lea ax, qword ptr [rdi + rbx + 4]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
or bl, dil
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
