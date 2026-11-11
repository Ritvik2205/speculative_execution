.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
or cx, 49
and dil, 125
or rdi, -11
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and cx, -8
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dl, -119
and bl, bl
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
