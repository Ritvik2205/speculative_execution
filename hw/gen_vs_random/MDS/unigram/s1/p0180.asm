.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or rax, rbx
test cl, sil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rdx, rbx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bts edi, 248
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
cmovnb rdx, rdx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
btr ebx, 0
and bl, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
