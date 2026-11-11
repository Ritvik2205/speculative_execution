.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
cmovle cx, ax
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test dil, sil
xor dl, 34
jmp .bb_0.1
.bb_0.1:
test cl, dil
xor dl, -19
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and dl, -73
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or rsi, 77
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
