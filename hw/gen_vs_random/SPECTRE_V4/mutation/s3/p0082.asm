.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
cmovnbe eax, edx
adc edx, edi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
adc dil, 109
cmovl si, di
sbb cl, dl
adc ecx, 55
sbb eax, 316213929
btc rcx, rax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
sub ax, -13057
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
bt rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
bts bx, cx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and dl, sil
test ecx, -1293796332
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, 13
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
or dl, al
add eax, 953442933
cmp cx, ax
cmp al, -106
sub dil, 65
mov ecx, edx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
neg dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
