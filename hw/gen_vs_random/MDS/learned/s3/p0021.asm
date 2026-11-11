.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and cl, dl
xor rbx, 89
or cl, cl
bts rbx, rcx
and rcx, 107
bts rsi, 206
test rax, -708244380
or sil, cl
or di, 4
and si, -121
test al, 127
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor cl, 83
or dil, al
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
