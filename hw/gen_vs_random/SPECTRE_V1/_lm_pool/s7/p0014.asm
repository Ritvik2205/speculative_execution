.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 75
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
and al, 33
and sil, 52
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
or sil, 52
sub dl, sil
adc bx, 57
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
lea rsi, qword ptr [rax + rcx]
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
