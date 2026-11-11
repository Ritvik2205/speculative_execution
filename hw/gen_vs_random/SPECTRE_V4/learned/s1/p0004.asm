.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
or dx, 58
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -3 # instrumentation
cmovnb ax, dx
xor eax, -164167056
or dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], eax
or bl, dil
cmovnp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
add esi, -5
cmovle ebx, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
sub cl, 116
movsx edi, bx
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
