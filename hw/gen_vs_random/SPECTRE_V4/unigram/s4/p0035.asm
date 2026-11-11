.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 33
add sil, 26
movsx rcx, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmovp ax, si
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
sbb bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
add cl, cl
adc ecx, -12
sub al, cl
test al, cl
and dil, dl
imul bx, di
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
adc al, bl
xor cx, 37
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
inc esi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sub al, 98
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
xor bl, al
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
cmovno esi, edx
movsx rdx, ax
cmp rcx, 53
sbb cl, al
imul rbx
cmovnbe rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 38
and si, 68
mul rbx
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
add cx, 36
or rbx, rax
cmovnz edi, esi
imul esi, edi, 70
neg eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
adc cx, 63
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
