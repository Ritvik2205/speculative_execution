.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
xor al, 122
jmp .bb_0.1
.bb_0.1:
test al, 22
xor cl, 24
not bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and dil, -62
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
