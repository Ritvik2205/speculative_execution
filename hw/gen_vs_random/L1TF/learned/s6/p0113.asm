.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
setno dl
xor rbx, 53
sub dil, 87
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and bl, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
sub al, -75
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
