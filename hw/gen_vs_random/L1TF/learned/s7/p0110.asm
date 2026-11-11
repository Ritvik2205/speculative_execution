.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
sub dl, -49
not dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
sbb dil, cl
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
lea ax, qword ptr [rbx + rsi]
cmp si, 87
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
or ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
