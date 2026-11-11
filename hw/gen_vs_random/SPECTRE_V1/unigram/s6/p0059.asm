.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp al
adc bx, 1
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
test rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -27 # instrumentation
sets al
imul rsi, rax, 76
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
add dl, -97 # instrumentation
sets bl
add cl, 112 # instrumentation
movzx edi, bl
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
xor bx, 47
and sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
