.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
add cl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 75
sbb bl, 79
or rax, -1571963467
not dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -126 # instrumentation
cwd
not rcx
setle bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 55
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
or sil, bl
xor dl, 71
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
