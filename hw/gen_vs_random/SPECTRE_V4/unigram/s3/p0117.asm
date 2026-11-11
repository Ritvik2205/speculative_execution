.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
mov bl, bl
movsx esi, dx
not eax
sub al, cl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
sub cl, -74
bts ecx, 33
adc dl, al
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
test cl, -89
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
imul cl
cmovo rbx, rbx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
mov di, 48
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
xchg bl, bl
bts esi, esi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
add di, -74
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and dil, bl
mul esi
or dx, ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
sub al, sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
cmovnbe rax, rcx
xor bl, sil
xor rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 11
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
