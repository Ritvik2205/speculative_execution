.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and cl, dil
add cl, -127
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
not eax
add al, 36 # instrumentation
cmovnp rdi, rax
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
add dil, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
add cl, 9 # instrumentation
adc cl, dl
test ax, -32457
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
