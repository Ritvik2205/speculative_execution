.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rbx
add cl, 112 # instrumentation
sbb edx, 41
add dil, 72
add dl, 95 # instrumentation
cmovnb rcx, rdx
not dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
movzx edx, dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
imul al
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
add sil, 2
sub rax, -1628299544
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
