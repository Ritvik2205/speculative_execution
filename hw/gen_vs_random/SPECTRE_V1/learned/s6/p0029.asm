.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 27
test dl, -36
sub al, -66
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, 104
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
sbb dl, bl
test bl, -8
sub al, dl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
btc eax, 31
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
