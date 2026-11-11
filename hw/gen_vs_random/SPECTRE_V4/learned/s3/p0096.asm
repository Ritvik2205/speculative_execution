.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
test ecx, 50
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
test sil, al
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
xor cl, -101
movsx edi, bx
or dl, 88
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
test cl, al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
btc rdx, 69
adc bx, -89
and al, -127
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, cl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
bt edi, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and sil, -49
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
cmp rax, 2115020203
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
