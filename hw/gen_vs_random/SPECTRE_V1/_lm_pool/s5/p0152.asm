.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
add rax, -845342150
mov al, sil
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -75
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
inc eax
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub dl, dil
sub cl, bl
mov al, dil
sub cl, dl
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
