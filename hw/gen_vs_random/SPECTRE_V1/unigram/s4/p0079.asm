.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 78
mov bl, dil
cmovnle ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
add bl, -76 # instrumentation
cmovnle dx, bx
sub dil, -111
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
cmovle eax, ebx
lea dx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
