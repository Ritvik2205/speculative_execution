.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 53
and al, bl
sub sil, -99
btc bx, cx
and rax, -109
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
test ebx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
