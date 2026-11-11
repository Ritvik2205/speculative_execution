.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 41
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rax, -636362975
or rsi, 53
test dl, 48
xor cl, sil
btr ax, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 48
test al, dil
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 92
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
