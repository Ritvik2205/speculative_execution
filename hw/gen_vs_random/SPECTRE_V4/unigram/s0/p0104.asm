.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 1
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
cmovbe rdx, rax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
mov dl, bl
or esi, 32
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
bswap rax
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
sub al, al
test rdi, 1222000858
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 89
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
adc dil, -17
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and bl, sil
cmp dl, -82
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
inc edx
movzx eax, dil
movsx edi, di
xor rdi, -72
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
adc bl, 35
bswap rcx
cmovp rcx, rax
btc ecx, 201
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
cmovo dx, bx
mov dl, bl
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
adc rdi, rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or dl, sil
adc cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
