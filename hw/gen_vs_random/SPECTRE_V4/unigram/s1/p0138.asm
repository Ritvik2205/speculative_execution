.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 78
xor edx, ecx
xor sil, 56
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
sub cl, cl
movzx di, sil
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 47
add cl, -37 # instrumentation
adc eax, -39
sbb rsi, -115
test ecx, 71
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
sub dl, 43
adc al, bl
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
imul cl
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
sub dl, al
not dx
xor esi, 81
cmp rbx, 82
or rax, rbx
adc sil, 73
test al, al
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp sil, sil
movzx rsi, dil
cmovnz edx, esi
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 57
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 11
adc al, 69
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 22
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
sbb bl, bl
bts eax, 209
test edi, -1249897727
imul rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
