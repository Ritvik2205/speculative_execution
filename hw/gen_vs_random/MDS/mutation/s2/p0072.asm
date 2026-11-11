.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
btr ax, bx
bt rsi, rbx
and bl, -5 # instrumentation
cmovnl di, si
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
test eax, 1838539683
not sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmovbe ebx, ecx
test cl, 101
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
not cl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
