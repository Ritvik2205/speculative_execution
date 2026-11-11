.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 22
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 71
movsx ebx, dx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 62
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
add dl, -108 # instrumentation
cmovnle eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
