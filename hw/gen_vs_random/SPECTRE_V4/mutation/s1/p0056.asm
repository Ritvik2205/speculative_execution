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
adc cl, -4
and al, -87
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
cmp bl, -16
cmp rcx, -121
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
mov dx, 11552
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
test al, 52
btc rdx, rsi
and dl, cl
add al, bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
mov bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and al, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
sbb al, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovnl bx, bx
sbb si, si
cmp cl, -80
inc rax
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
imul edx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub eax, -672265139
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
