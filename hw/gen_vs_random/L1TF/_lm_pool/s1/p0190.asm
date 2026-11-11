.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
cmp rcx, 54
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
sub sil, -99
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or al, -5
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
cmp cl, -89
or cl, -78
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
