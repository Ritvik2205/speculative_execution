.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, -984782068
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
dec cx
cmovp edx, edx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmovnb rdi, rdi
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
test rax, -331426050
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 81
movsx edi, bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
xor cl, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
adc al, al
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, bl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
sbb eax, 4
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp dl, al
or bx, dx
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
imul rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
cmp al, -52
xor esi, ebx
movzx cx, bl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
