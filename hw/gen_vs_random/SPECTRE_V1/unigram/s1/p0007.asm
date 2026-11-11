.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test rbx, rdi
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
add dl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
mul cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, bl
or rsi, -14
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
cmovnbe rdi, rax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
