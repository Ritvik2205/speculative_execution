.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
lea rsi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rdi, 84
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 30
adc bl, -76
and al, sil
sbb bl, dl
and cl, 86
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 61
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 1830317432
lea dx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
