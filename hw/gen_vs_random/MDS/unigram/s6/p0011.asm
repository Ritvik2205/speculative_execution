.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
test dil, 46
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
cmovnb rcx, rcx
xor dl, al
and al, -86 # instrumentation
cmovns bx, ax
btr di, 89
and cl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
cmovnp esi, ecx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 44
btr rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
or ecx, 57
cmovs esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
