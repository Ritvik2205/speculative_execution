.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
or eax, 2007177863
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
adc al, cl
add sil, sil
btc dx, 119
neg al
add bl, al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sub ebx, 100
adc edi, 44
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
xor bl, al
cmovz esi, edi
cmovbe bx, bx
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
adc dx, 47
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
xor rsi, -3
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
cmovnle rsi, rsi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or bl, bl
sbb dl, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
add dl, 41
sub al, 119
cmp cl, 89
mov edi, -1544998000
imul cl
movzx rdx, cx
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
