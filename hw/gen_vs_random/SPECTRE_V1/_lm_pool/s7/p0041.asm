.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
setns sil
test dil, -116
test bl, -8
jmp .bb_0.1
.bb_0.1:
imul rbx
mov sil, cl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and cl, -57
lea rdx, qword ptr [rdi + rax + 87]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
