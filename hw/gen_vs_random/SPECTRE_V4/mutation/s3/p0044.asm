.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, 4
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, 1049851782
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, -1
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
or dl, al
add eax, 544045319
cmp cx, ax
cmp al, 105
sub dil, -11
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
