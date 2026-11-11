.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
sbb sil, -19
sbb bl, sil
test al, 15
xor al, 89
add al, bl
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dl, 84
lea rdi, qword ptr [rax + rsi + 24]
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
add al, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
