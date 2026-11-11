.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
add dil, 82
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
movzx ebx, cl
add sil, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
sub sil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
or sil, 12
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc al, al
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmovns rcx, rdi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add al, dl
sbb cx, di
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
cmp al, 19
test rdx, 37
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], eax
add bl, -72
cmovs rax, rbx
sub dil, -10
cmovnb bx, bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 15
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and di, 92
bt ebx, 228
adc bx, -89
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
adc bl, 89
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 4
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 13
bts dx, 13
cmovle rdx, rbx
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 50
cmovo rsi, rsi
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
