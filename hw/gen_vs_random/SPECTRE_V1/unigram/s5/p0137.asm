.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
bt ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 60
bt rbx, rbx
add si, 36
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
mov dl, bl
lea cx, qword ptr [rdi + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
add bl, 78 # instrumentation
adc dx, 54
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 66
add bl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
add rdx, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
