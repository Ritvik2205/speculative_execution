.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and cl, 127
and cl, -63
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
xor bx, ax
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
cmovnle ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and al, -37
test dil, -67
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and ax, -30938
jmp .bb_0.2
.bb_0.2:
and dl, 60 # instrumentation
cmovno edi, edi
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
or rbx, -124
and al, -37
cmovnl ebx, edi
and bx, -21
and rax, -1909598591
cmovns eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
