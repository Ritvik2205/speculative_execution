.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
or cl, 7
jmp .bb_0.1
.bb_0.1:
bt edi, edx
or cl, dil
test al, -81
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
xor dil, al
and cl, cl
jmp .bb_0.2
.bb_0.2:
xor al, 34
and al, -114
xor al, dl
xor rax, -1657511731
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
