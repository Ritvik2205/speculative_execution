.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rdx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
movsx si, dl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
adc dl, cl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
add cl, 32 # instrumentation
sbb bl, cl
lea rdx, qword ptr [rsi + rsi + 53]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add bl, 106 # instrumentation
cmovs eax, esi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
