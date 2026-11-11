.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
add al, -27 # instrumentation
sets al
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 44
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
xor cl, 71
movzx ebx, bx
cmp rdx, -19
setnb dil
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
xor cl, 78
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
