.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rax, 1994547909
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bx, 90
and rax, 1163013815
adc cl, -34
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
