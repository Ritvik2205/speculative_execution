.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -2
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 59
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 57
imul rdx, rbx, 80
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
cmp dl, 34
or si, 0b1000000000000000 # instrumentation
bsr di, si
sbb bl, al
cmovnle edx, edi
cmovz ecx, ecx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
xor dl, cl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add dl, dil
add cl, 122 # instrumentation
cmovz rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
bt ax, 73
mov esi, ebx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
sbb dl, dl
test rax, -344032571
cmp edx, 70
sbb di, -76
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
sub sil, al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 12
sub al, 98
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and dl, 32
mov eax, ebx
add sil, -71 # instrumentation
adc sil, cl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
adc al, 36
sub rbx, rdx
sub edx, 62
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
test bx, di
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
movzx edi, dl
add edi, 11
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
