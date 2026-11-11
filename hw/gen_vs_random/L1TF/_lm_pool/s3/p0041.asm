.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 78
add cl, 88
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
test al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
