.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 47
add eax, 84
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
bt rax, rdx
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
adc dl, cl
xor bl, 27
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
not ebx
or dil, sil
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
add cl, -35 # instrumentation
mov dil, cl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
or bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
cmovnle eax, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and al, 41
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
cmovnl di, cx
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
movzx eax, dl
mul cx
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
xor dl, al
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
or sil, al
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
mov al, sil
imul eax, edx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
