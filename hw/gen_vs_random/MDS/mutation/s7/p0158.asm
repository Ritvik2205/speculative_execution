.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test ax, -31596
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp edx, ecx
and al, 75
btc rax, 59
btr dx, cx
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovnle edi, ecx
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bts rsi, 206
and dl, -15 # instrumentation
cmovnp dx, dx
bts si, di
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
xor al, 34
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and cl, 8 # instrumentation
cmovnl rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and al, 49
btc esi, 199
or si, 94
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
cmovnz rdi, rdx
bt cx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
