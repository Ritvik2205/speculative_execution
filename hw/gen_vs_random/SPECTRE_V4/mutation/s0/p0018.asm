.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
imul rdx, rdx, 44
or rax, rsi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
sbb bx, ax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
bt dx, 81
add sil, -18
mov cl, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
test al, -38
cmp dl, dl
bt ecx, 25
and rsi, 0
cmp al, -116
mov dl, al
cmovp ebx, eax
and dl, -11
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, -55
xor ebx, -62
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btr cx, 252
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
neg cx
btc rsi, 77
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -102
mov ax, 31802
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
movzx edx, al
dec cx
imul eax, edx
btc rdx, rsi
and rcx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
