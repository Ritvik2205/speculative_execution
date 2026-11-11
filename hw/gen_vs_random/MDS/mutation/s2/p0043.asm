.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
and cl, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
cmovl eax, esi
or dil, -78
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and cl, -23 # instrumentation
cmovno edi, edx
xor ax, si
cmovp ax, dx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
or cl, al
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
test rax, 1214712583
xor cl, sil
cmovb rax, rcx
jmp .bb_0.2
.bb_0.2:
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bts rsi, 205
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
and al, 106
btc esi, 199
or si, 94
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
cmovnz rdi, rdx
bt cx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
