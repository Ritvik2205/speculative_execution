.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
lea bx, qword ptr [rax + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
cmp cl, cl
setb cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 10
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
mov eax, esi
add dil, 90 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
setnb bl
bt edx, ecx
mov dil, sil
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
