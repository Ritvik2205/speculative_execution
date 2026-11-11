.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe cx, ax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 93
xor edx, 18
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -76 # instrumentation
cmovnle dx, cx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
cmovb bx, ax
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
cmp rbx, rcx
mul al
xor al, dil
and bl, 124
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
