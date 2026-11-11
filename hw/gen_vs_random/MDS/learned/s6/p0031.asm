.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
bts rsi, rdx
xor ebx, 76
test al, 91
and al, 35
test cl, 0
or al, 16
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and al, dl
and sil, 74
jmp .bb_0.1
.bb_0.1:
xor al, 8
xor dl, -19
and al, -55
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
