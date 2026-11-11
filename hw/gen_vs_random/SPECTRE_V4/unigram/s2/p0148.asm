.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, dx
mov eax, -1056201206
sub rsi, rsi
cmovs edi, esi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
cmovz rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 39
adc dl, 33
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
sub rdi, -34
sbb rcx, rdi
or rsi, -5
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
xor al, al
xor cl, -73
add bl, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
cmp dl, sil
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
not edi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 44
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 98
not rsi
and ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
add al, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and ax, cx
cmp rbx, -91
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
adc al, 116
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
sub sil, al
not bl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
cmovbe esi, ebx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
add al, 111 # instrumentation
cmovno ecx, edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
cmp dil, cl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
sub edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
