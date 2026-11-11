.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
btr di, ax
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or cl, 30
xor cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
or sil, -78
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
xor rax, -1499464454
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
