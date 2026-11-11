.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and bl, sil
sub dil, -39
and al, -68
add al, -80
and eax, -409673666
lea ebx, qword ptr [rdi]
and rdx, 88
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
or ebx, 90
lea rbx, qword ptr [rdi + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
