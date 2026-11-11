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
lock btc word ptr [r14 + rsi], 5
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
test dword ptr [r14 + rdx], 1324040999
test rax, -359674714
xor cl, sil
cmovb rax, rcx
jmp .bb_0.2
.bb_0.2:
and bl, 65 # instrumentation
cmovnbe ax, dx
xor edx, 17
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
xor rax, -843636050
test cx, di
cmovs di, bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and dl, 68 # instrumentation
cmovns ax, dx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
