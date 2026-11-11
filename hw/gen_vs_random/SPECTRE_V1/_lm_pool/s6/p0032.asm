.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
lea cx, qword ptr [rdi + rdx + 25]
test al, 84
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rdx, -98
lea ax, qword ptr [rcx + rax + 33]
and al, -54
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
