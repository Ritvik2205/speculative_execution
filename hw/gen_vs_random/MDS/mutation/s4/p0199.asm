.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 343548072
btr ax, bx
not sil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovbe ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
test cl, 91
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and bl, -5 # instrumentation
cmovnl di, si
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
