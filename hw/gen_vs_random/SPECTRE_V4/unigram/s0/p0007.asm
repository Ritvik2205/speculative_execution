.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, 6
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
sbb dil, 38
sub dil, -10
sub bl, bl
cmovz rdx, rbx
cmp cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
neg al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
add sil, 26
adc edi, 94
add edi, ebx
xor ax, dx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
test esi, 86
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
test edx, 573099753
sbb cl, sil
xor cl, -54
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 21
cmp rcx, 84
sub sil, sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 66
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dil, -10 # instrumentation
mov di, 86
or bl, 87
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
sub bl, al
mov ax, 15
cmovno ecx, eax
sub ebx, edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xor esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 12
cmovnbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
