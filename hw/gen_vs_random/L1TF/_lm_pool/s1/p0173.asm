.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub dl, -49
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 14
jmp .bb_0.1
.bb_0.1:
dec bl
cmp dil, 46
sbb ecx, 23
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 14
jmp .bb_0.2
.bb_0.2:
sub dl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
