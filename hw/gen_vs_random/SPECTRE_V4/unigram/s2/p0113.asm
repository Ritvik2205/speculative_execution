.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 11
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 55
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], dx
adc dl, dl
sub bl, dil
cmp sil, -100
imul esi, edx, 1
add bl, bl
imul dl
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
btr cx, ax
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
sub rdx, 84
movsx esi, bl
mul edx
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
adc dl, dil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add cl, 14 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
sub bl, 66
imul bx, cx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
adc dil, sil
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
movzx ax, cl
or bx, cx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 45
test dil, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
mov esi, eax
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
sub ecx, -107
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
adc cl, -54
add dil, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
btc eax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
