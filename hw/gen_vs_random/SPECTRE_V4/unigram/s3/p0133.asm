.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
cmp cl, al
bts rdx, 14
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
add bl, 46 # instrumentation
adc bx, ax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and cl, dil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 26
inc si
test al, 114
or rdi, -41
adc ebx, eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
cmp al, al
bts eax, 16
cmovnp edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
cmovbe dx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 68
cmovnb rdi, rdx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
sub bx, 24
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
bt rbx, 78
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
test eax, -31785616
cmovnb ebx, edx
cmovs rax, rcx
mul sil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 97
mov dl, 81
add cl, -119 # instrumentation
sbb esi, 20
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and edi, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
