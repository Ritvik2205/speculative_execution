.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
test dil, -51
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and dl, dl
xor di, cx
test rax, rdx
btr dx, 47
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and ax, -16061
btc rdi, rcx
cmovnz ax, si
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
bt rcx, rbx
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
cmovnle rax, rsi
xor sil, -126
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
