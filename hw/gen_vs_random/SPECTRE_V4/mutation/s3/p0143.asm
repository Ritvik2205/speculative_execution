.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 5
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
or al, sil
dec rax
neg ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
dec dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
add rax, rax
xchg rdi, rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and ax, 26513
xor al, -84
sbb al, 57
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
add bl, cl
cmp rax, -47
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
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
lock btc word ptr [r14 + rax], 6
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
sub rax, 714283065
btr si, 108
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
