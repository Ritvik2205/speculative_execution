.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 73
bt ecx, 247
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
mov cx, si
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add dil, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
imul rsi, rcx, 50
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
adc ebx, 51
and cl, dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 10
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
cmp cx, 0
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 62
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
test dl, sil
sbb si, 60
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
add bl, -2 # instrumentation
cmovs rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
cmovz eax, ebx
adc dil, -15
cmovnbe rdi, rsi
test dil, 64
cmovbe ax, bx
and bl, cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 61
cmovb ax, dx
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
add al, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
imul edx
cmovs rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
xor cl, al
bswap rdx
add al, -32
cmovnl edx, ecx
or eax, -863161215
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
