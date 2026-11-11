.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
or al, -57
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax]
and ax, 37
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
bts rbx, 78
or cl, -78
and al, bl
cmp sil, -11
jmp .bb_0.4
.bb_0.4:
test rdx, rdi
xor si, -50
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
jmp .bb_0.5
.bb_0.5:
cmp cl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
