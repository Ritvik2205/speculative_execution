.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 88
sub eax, esi
add al, dil
add al, 5
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
cmovz rsi, rdi
test sil, 30
sbb rcx, rbx
or cx, 60
test ax, 23760
add rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
xor cx, bx
bt edx, esi
bt esi, edx
cmovnl rsi, rax
cmovs eax, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
mul dl
test ax, di
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
add edi, esi
cmp dl, 38
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
bts eax, 209
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor dil, 62
cmp ecx, 68
cmp al, cl
or dl, bl
add bl, 110 # instrumentation
movsx dx, bl
cmovle rcx, rbx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
cmovnbe rax, rsi
or dil, al
or di, 0b1000000000000000 # instrumentation
bsr bx, di
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
