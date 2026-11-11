.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
add cl, 112 # instrumentation
adc cl, bl
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
bswap eax
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 47
imul rdx, rsi
sbb al, 49
test bl, -8
cmovnp ax, dx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
