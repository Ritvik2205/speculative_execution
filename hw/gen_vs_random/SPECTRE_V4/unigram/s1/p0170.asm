.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
sub bl, 17
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sub dl, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
cmovl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and eax, -24
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 9
add bl, -18 # instrumentation
mov rsi, rax
btc di, bx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
add dl, cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 74
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovz edx, eax
inc eax
sub dl, cl
test bx, ax
xor bl, cl
xchg rbx, rax
cmp bx, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 14
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
or dl, 88
and al, dl
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
sbb bl, bl
adc sil, al
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
adc cl, bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and bl, dil
not ax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 83
cmovs rax, rdi
sub rbx, 3
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
