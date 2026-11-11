.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, 81
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
test ecx, 75
sub ax, dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 57
cmovb bx, bx
cmovs cx, si
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
bts edx, 52
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
add al, 5
test di, 53
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
imul bl
neg dx
btc rdx, rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
sub cl, cl
add rax, 69
mul cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 100
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
sbb sil, 108
and bl, 26
neg edi
cmp dl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 71
add ax, -15653
cmovnb cx, cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
cmovnbe edx, edi
cmp ebx, 12
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
add cl, -37 # instrumentation
adc ecx, 31
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
add dl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmp rdi, 34
imul bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
cmovo si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
