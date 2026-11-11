.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -5 # instrumentation
cmovnl di, si
cmovbe ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
test eax, 1287331633
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
test cl, 54
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
btr ax, bx
not sil
bt rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
