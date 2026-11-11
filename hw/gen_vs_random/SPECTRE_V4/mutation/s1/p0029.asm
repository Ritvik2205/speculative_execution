.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
inc rbx
xchg di, ax
adc cl, -85
and al, -118
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
movsx cx, cl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add bl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
cmp bl, 12
cmp rcx, -121
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
mov dx, 24004
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovb eax, ebx
or dx, dx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rax, -98
cmp ebx, 80
and dil, 8
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
sbb rax, 1518549445
neg dl
mul rbx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add cl, dl
sub cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
cmovno esi, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
