.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test rdi, 43
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
or al, -22
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
test dl, 9
and bl, 68
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
test eax, 1729060510
btc si, 99
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
