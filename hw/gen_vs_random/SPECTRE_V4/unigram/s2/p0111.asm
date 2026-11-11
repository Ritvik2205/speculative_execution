.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
or bx, -33
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
movzx rdi, bx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmp al, 105
cmp dil, 53
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
imul edi, edi, 76
xor al, cl
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
cmovbe ax, dx
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add bl, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
bt rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
dec rcx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
btc eax, ecx
btc rax, rdx
cmp dil, -92
sub bl, -89
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor sil, sil
add cl, 111 # instrumentation
cmovnle cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
inc dil
xor eax, 1185843233
add cl, -118 # instrumentation
sbb rdx, 20
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovo edi, ebx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
sub rax, -1066968986
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 81
cmovnz eax, eax
and rbx, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
