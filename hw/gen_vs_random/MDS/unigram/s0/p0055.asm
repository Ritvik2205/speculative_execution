.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ax, cx
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and eax, 561041355
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
cmovnz esi, edi
cmovo di, di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 49
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
cmovs eax, esi
cmovnp rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
bt eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
