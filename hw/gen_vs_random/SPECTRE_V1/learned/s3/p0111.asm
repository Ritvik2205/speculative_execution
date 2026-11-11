.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 78
lea dx, qword ptr [rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
adc eax, 1725322202
test rsi, -1408527332
xchg rcx, rdx
and al, -23
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
