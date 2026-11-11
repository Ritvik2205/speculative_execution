.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
or ax, 19243
cmovo cx, si
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
cmovs ax, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cbw
bt esi, esi
cmovs edx, eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
test dl, dil
xchg si, di
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
bts rsi, 89
xor si, 49
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
btc rsi, 91
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
movzx rax, dil
and al, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
or cl, dl
cmovnbe si, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and bl, 57
and sil, bl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
mov rcx, 30
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
xor al, -15
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 49
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and sil, -94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
