.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, rdi
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 32
sbb ebx, -54
movzx rbx, dil
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
add cl, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
not dl
movsx dx, sil
adc al, 116
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
imul ecx, esi
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 27
or si, si
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
cmp sil, dl
cmp rdx, -49
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
or sil, -47
add bl, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 91
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
or bl, -99
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
xchg bl, cl
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add al, -112
mul rdi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 32
neg eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
and dil, sil
test cl, 78
and di, bx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
btc eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
