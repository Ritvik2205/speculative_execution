.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 84
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
cmp cl, dl
cmovz eax, edx
mul dil
adc ebx, 64
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
or bl, 53
xor rsi, rbx
imul al
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
