.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 110
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
btc edi, 230
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
cmovb ax, ax
test sil, -55
and bl, -40 # instrumentation
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
or al, bl
and al, al
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
btr esi, ecx
bts dx, 50
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
cmovbe edx, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
