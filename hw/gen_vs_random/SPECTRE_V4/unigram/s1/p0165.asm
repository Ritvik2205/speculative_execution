.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -124
adc esi, 21
sbb esi, 68
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
adc edx, -86
xor ax, ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
xchg bl, dl
cmp bx, 113
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
btc rdx, 130
not ecx
dec al
dec dl
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
sbb sil, 24
imul bx, ax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 83
and si, -74
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
test edx, -38580719
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
cmovnb cx, ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
mov rsi, rbx
and cx, -117
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 38
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 62
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
or rsi, -5
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 65
movzx cx, dil
cmovnz ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
cmovo dx, ax
or cl, al
cmovb rax, rsi
mov rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
