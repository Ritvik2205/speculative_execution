.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovb eax, edi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 33
cmovns si, cx
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
cmovnl rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 48
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
or sil, dl
cmovb eax, ebx
test cl, al
add ax, ax
cmovnbe eax, edx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
adc al, cl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
sub rbx, 88
cmp ax, 23131
xor ebx, 60
cmovns rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 81
sub dl, sil
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
cmovp dx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
add di, -74
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor sil, dl
cmovs eax, ecx
cmovs ebx, ecx
cmp rcx, 25
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 95
cmp dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
imul rsi
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
imul rcx, rax, 22
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
cmovnz eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
