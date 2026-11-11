.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
or rsi, 26
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test edx, -372470678
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, 127
and cl, sil
bt ax, cx
or rdx, -109
test dl, 9
or rdi, 21
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
