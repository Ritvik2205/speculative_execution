.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
add bl, -95
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov al, dl
and sil, 52
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 20
cmp al, 46
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
cmp cl, 28
sub cl, -21
test al, 84
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
