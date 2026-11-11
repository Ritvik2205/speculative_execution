.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
xor dl, -19
jmp .bb_0.1
.bb_0.1:
or al, 16
and dil, dil
and sil, sil
jmp .bb_0.2
.bb_0.2:
test bl, -114
jmp .bb_0.3
.bb_0.3:
or al, -22
test dil, 46
test eax, -409834435
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or cl, 39
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
