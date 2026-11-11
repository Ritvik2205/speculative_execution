.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
setnz sil
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 23
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 32
neg dl
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 70
sbb dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
btc ax, si
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
sub rsi, 26
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
test rax, -344032571
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
test bx, si
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
cmp rax, -120490246
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
movzx ecx, dl
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
