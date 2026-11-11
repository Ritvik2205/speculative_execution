.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 135
xor esi, 66
sub bl, -89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, -124
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, 40
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, 17434
btc rdx, 130
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
sub rax, 120
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
