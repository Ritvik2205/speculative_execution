.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 35
bt eax, 84
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 70
cmovns dx, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
bts ecx, 36
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, 19
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 33
sub bl, al
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
bts rdx, rax
test bx, di
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
test ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 96
neg cx
add cl, dil
and cl, 58
add rbx, rax
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 93
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
or cx, ax
movsx rdi, si
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 25
add bl, 65 # instrumentation
cmovnp cx, ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
xor rax, 74
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
sbb al, dil
cmovz edi, edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
add al, -75 # instrumentation
adc al, 79
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
sbb rsi, -115
not cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
