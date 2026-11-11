.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
adc bl, -76
sub al, dil
add cl, bl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and al, -23
lea rdx, qword ptr [rbx + rdi]
test dil, -116
bt edi, 121
cmp dil, -78
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
