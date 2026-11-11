.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
bt cx, 94
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 98
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
cmovo dx, si
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmovnle rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
cmovnp si, si
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
add dl, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
