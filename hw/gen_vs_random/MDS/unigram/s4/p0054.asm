.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rax, rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
cmovnz ax, bx
and rdx, 39
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and cx, -2
or sil, -49
bt esi, eax
and al, -38 # instrumentation
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
cmovbe rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
