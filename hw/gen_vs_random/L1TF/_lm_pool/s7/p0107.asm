.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and al, -68
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 80
cmp rbx, 21
jmp .bb_0.2
.bb_0.2:
cbw
and dx, 37
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
