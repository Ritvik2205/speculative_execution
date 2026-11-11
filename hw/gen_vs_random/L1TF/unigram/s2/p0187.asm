.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
mov dil, 78
bts rdi, rbx
jmp .bb_0.1
.bb_0.1:
add dl, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
sub dil, -39
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
btr edx, 7
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add sil, -63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
cwd
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
