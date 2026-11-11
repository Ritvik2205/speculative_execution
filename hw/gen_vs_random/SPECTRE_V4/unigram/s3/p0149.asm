.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
cmovnbe rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
inc ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
cmovnbe ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
mul esi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
add esi, -5
cmovnl rax, rax
xor al, 69
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 64
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 76
sub edx, 61
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
cmovb edx, ebx
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
sub dl, 43
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
imul bx, ax, 44
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
or edx, esi
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovb ax, ax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 87
or dl, 88
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
test ebx, -595096626
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
adc cx, 34
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
btc bx, 80
and sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
test di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
