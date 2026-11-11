.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 23
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and al, bl
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
test al, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
cmovnz rdi, rcx
mov bl, cl
cmovnz rbx, rdx
btr edi, 54
btr ax, 109
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
movzx eax, sil
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
cmp eax, 1521417271
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and esi, 126
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, -16
sub cl, dl
bt dx, bx
and dl, al
cmp al, 98
bts cx, 158
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edi
xchg ecx, edi
imul sil
add eax, esi
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test rdi, rax
cmp bl, -79
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
or edx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
