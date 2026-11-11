.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
or sil, -44
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
cmp bx, -21
or dil, bl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
