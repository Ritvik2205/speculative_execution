.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, sil
xor dl, sil
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 4
and dl, -59 # instrumentation
cmovbe di, si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
btr ax, ax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
xor dil, 8
xor esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
bts rdi, rax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
cmovo edx, ecx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and bl, -34 # instrumentation
cmovs rdi, rbx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
