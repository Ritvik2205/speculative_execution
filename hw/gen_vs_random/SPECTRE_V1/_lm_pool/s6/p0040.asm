.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
sub rax, -1628299544
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 42
and dl, -109
mov dil, cl
lea rbx, qword ptr [rax + rsi + 4]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, dil
lea rax, qword ptr [rdx + rdi + 48]
test al, 34
xor bl, dl
cmovnbe di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
