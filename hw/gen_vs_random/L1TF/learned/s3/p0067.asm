.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
test dl, -37
or ax, -10161
lea rdi, qword ptr [rcx + rbx]
sub eax, 8
and ebx, -52
and dil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
