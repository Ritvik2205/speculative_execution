.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
sub dl, al
sbb eax, 99727957
xor dil, al
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and cl, -57
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
cmp rsi, 53
sub bl, -19
or ax, 18658
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
