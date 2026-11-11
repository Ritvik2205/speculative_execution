.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
test al, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or dil, -78
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
xor di, -83
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rax, 1250429750
and ax, 19740
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
