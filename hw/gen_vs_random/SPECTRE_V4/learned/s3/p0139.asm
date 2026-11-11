.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 29
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -26881
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
cmovo esi, edx
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
sbb dl, -99
cmovnbe ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 67
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 11
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 82
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
cmp rax, -227205962
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
inc edx
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
cmp sil, bl
and esi, 55
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
