.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 72
btc bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and bl, dl
movzx ebx, al
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
test eax, 1561062795
cmovs edx, esi
mov rax, -8696242625349627833
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
test di, dx
bts esi, 241
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
imul rbx
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor ecx, edx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
test esi, 35
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and bl, 26
add al, 5
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
bts ebx, 22
bt esi, ebx
inc si
mov ebx, 75
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 36
mul edx
cmovs edx, edi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 12
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
cmp cx, 95
or di, 80
adc dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
