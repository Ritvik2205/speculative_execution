.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test sil, dil
jmp .bb_0.1
.bb_0.1:
test dl, al
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and ax, -16061
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test al, cl
bt si, di
or sil, dil
xor dil, cl
test al, 127
xor dil, 124
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
