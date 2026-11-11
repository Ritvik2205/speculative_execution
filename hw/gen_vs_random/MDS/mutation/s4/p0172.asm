.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 343548072
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
not sil
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
cmovbe ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test cl, -18
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and bl, -5 # instrumentation
cmovnl di, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
btr ax, bx
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
