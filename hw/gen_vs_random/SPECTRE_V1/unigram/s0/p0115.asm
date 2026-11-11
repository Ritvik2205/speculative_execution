.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and dil, dl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
mov cl, al
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
sub al, dil
add bl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 10
cmovnb eax, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 54
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
