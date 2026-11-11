.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
test cl, -86
xor al, 55
btr ax, si
xor bl, -102
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test dil, -80
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 67
test eax, 343548072
or rsi, 79
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
