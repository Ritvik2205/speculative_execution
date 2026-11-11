.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
not cl
jmp .bb_0.1
.bb_0.1:
not bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and dil, dl
or al, 24
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
xor al, 34
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
