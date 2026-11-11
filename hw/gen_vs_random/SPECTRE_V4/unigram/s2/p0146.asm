.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
cmovz ecx, edi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
cmp al, cl
cmovl dx, cx
imul edx, eax, 5
bts esi, 18
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 48
sub eax, -494922880
mov dl, sil
sbb dil, dl
add al, al
cmp dl, sil
sbb rdi, 10
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 15
btc edi, 125
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 38
or bl, 80
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
mov al, 125
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
sub di, dx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
mov edi, 412386591
test rdx, rsi
movsx edi, dl
adc ebx, -5
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
add al, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
mul eax
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
cmovb rdi, rdi
and cl, al
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
bts ebx, 189
cmovl rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
add dx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
