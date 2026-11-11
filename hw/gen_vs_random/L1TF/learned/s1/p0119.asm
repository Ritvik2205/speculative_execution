.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
mul al
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rbx + 30]
and al, dl
and sil, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
