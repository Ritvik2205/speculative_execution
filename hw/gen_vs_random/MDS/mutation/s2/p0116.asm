.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and bl, -5 # instrumentation
cmovnl di, si
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
not sil
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
btr ax, bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
cmovbe ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
test cl, -113
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
