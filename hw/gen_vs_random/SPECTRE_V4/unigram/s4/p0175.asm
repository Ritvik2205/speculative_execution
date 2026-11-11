.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
add dx, 6
dec rcx
cmovl ax, ax
btc edx, 164
adc dl, bl
add al, dl
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
cmovp bx, si
and dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
adc al, al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
sub cl, -127
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
sub rcx, rax
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add cl, -20 # instrumentation
adc bl, dil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
movsx eax, cx
sub edi, 18
mov dil, dil
add dl, al
add eax, esi
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
cmovns rcx, rsi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
imul dx
add esi, 40
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
btr ax, 109
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
or bx, -33
mov cl, -38
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or esi, 32
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and ax, bx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
mov dil, sil
cmp ax, -22704
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
