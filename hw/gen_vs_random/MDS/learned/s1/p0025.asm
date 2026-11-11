.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
btr ax, dx
xor dl, 40
and ax, -122
or sil, -78
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and dil, -39
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
or al, -24
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
