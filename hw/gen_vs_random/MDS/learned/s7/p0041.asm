.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or dil, sil
jmp .bb_0.1
.bb_0.1:
bts rax, 77
btc rax, 59
and cx, -2
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or cl, dl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or rcx, -17
jmp .bb_0.4
.bb_0.4:
test al, 91
and dil, al
test rbx, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
