.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
movsx bx, dl
sub edx, -122
add dl, sil
bts esi, 107
add bl, -49
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
movzx cx, al
adc rdi, 35
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
inc esi
adc edx, -86
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
adc bl, al
sub eax, -1627558845
add al, -4
add bl, sil
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 99
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 43
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
imul edx, ecx
and cx, -117
xor dl, -66
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
adc bl, dil
adc ecx, 114
bts ax, 159
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
bts rsi, 236
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
adc edi, -83
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], edx
or si, 0b1000000000000000 # instrumentation
bsf dx, si
test dl, bl
cmp cl, 59
btc rdx, rax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 100
bts si, cx
adc al, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
