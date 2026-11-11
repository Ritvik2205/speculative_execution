.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx rdx, bx
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, 111
cmovbe edi, ecx
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp dil, 53
test sil, bl
cmp ebx, -19
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, -12
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xor esi, esi
adc bl, -58
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
cmovz edi, edx
cmovp si, ax
xor dl, bl
test ax, ax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc cl, bl
cmovnle si, di
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
sub rax, -1066968986
btr si, 114
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
neg rcx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
