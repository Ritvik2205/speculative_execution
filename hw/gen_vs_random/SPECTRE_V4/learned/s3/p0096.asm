.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
test ecx, -907816607
sub al, 59
or dil, -104
adc sil, 88
xor dil, cl
test cl, -10
add al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
