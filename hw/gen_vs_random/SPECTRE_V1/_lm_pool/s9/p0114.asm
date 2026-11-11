.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and al, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rax, -1128038253
and ax, 21910
test cl, -120
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
