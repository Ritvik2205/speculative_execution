.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
imul esi, eax, 76
movzx eax, dx
add al, 19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
add bl, -114 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
mov sil, dil
cmp dil, -78
add bl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
add cl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
