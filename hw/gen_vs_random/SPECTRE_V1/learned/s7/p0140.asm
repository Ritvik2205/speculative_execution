.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sub dil, dl
sub sil, -18
test al, -99
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test al, -75
sub di, 93
setz bl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
