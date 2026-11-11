.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
test dil, -126
cmp rsi, 49
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
bt bx, 78
jmp .bb_0.3
.bb_0.3:
add cl, 42 # instrumentation
lea edi, qword ptr [rcx + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
jmp .bb_0.4
.bb_0.4:
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
