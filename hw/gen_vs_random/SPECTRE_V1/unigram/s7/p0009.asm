.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rbx], dx
imul rdx
add al, 72 # instrumentation
cmovns bx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rbx + rdx + 56387]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
add cl, 110 # instrumentation
cmovb rsi, rcx
lea cx, qword ptr [rdx + rbx + 42]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 40
lea rax, qword ptr [rdx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
