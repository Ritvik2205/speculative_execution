.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, dl
bts eax, 209
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
test dl, al
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 86
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xor sil, 56
sbb dil, 11
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 90
or edi, edx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
adc sil, 28
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 110
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 65
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
sbb ax, -26881
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
add dl, -99 # instrumentation
not eax
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmp cl, 68
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
or ax, cx
xor eax, -164167056
adc al, sil
cmovle rdx, rcx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and si, 68
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
test rax, -344032571
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
imul eax
test cl, bl
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
add dil, dil
and rbx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
