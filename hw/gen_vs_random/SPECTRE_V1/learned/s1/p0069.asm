.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
cmp rcx, 7
add al, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi]
inc edx
btr cx, ax
add bl, 70
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
lea cx, qword ptr [rdx + rbx]
or dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
