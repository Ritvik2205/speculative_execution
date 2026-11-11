.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rcx, -63
xor sil, -14
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor al, cl
test cl, 91
jmp .bb_0.1
.bb_0.1:
test dl, 27
test cl, sil
xor al, 34
test al, sil
test dl, al
test sil, 41
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
