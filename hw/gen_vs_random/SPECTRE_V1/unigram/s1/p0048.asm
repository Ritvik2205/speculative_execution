.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
cmovnp bx, di
adc dil, 3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc rdx, 35
adc dil, 12
sbb al, -127
cmovl eax, edi
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
