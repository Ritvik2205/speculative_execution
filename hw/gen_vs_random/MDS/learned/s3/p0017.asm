.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and dil, 125
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor cl, 24
xor cl, al
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dil, -78
or ax, -14271
xor rdi, -9
or dl, al
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
