.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
movsx rdx, di
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
xor cl, cl
bts esi, 107
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
btc rdi, rdi
add dil, bl
movsx rax, bl
cmovle rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor rax, 1049851782
neg rcx
cmp dl, 23
cmp bx, 113
sub dx, -12
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 73
imul dl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
cmp rcx, -121
cmovnbe eax, ecx
neg rsi
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
xor dil, 37
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
cmp si, dx
test bl, -91
cmp rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
