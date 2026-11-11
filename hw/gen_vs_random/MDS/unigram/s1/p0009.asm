.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
cmovbe ecx, ecx
and cl, 8 # instrumentation
cmovz rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rsi
cmovnz rdx, rbx
and sil, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
cmovno rbx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
xor cl, 15
and dl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
xor ax, ax
test eax, -1634766116
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
xor al, 122
cmovnp esi, eax
xor eax, -885380838
cmovp edi, ebx
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
