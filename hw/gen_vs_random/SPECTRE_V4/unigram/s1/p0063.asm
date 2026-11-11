.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
add di, -74
movzx rdx, bx
cmovns bx, ax
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
neg ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
sub dl, cl
add ebx, esi
add dil, al
adc cl, 33
cmovz edx, ebx
add dl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
neg dl
bts eax, ecx
and ax, 35
xor al, sil
add dil, al
xor bl, 93
add cl, -21 # instrumentation
adc rsi, 32
add bl, 63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
dec cl
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 86
or bx, -111
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
sub dl, 43
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
cmovnb rdx, rsi
bt esi, 227
xor ecx, 65
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
btc di, bx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovs rsi, rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
