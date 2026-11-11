.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and al, 33 # instrumentation
cmovnle ebx, ecx
cmovnb di, cx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
xor dl, -68
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
bt edx, 69
cmovnb rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
bt rcx, rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
cmovns edx, edi
cmovz di, cx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rax, -1909598591
test dl, 25
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and cx, 27
test rax, 1732677821
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and bl, 43
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, ecx
or al, sil
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
cmovnbe edi, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
and si, 97
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
cmp ax, 99
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
test dil, -67
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
sub dl, dl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
