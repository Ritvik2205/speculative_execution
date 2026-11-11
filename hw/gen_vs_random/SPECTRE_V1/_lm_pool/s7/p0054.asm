.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub dl, dil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, al
lea rcx, qword ptr [rbx + rdi + 19]
adc dil, al
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
add al, -72
mov al, 7
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
