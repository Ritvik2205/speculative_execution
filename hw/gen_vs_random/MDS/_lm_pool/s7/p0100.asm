.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
test al, -7
xor dl, -59
and al, dl
xor cx, -18
xor sil, -126
xor dil, cl
or dl, al
xor cl, 83
xor dl, cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor rax, -1499464454
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
