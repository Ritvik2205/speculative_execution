.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
cmovs rbx, rdx
btc ax, dx
sub cl, cl
or eax, 1802312508
inc edi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 16
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 11
cmovnbe rax, rdx
dec si
cmovnb eax, esi
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
imul rdi
cmovo edx, esi
bts ebx, 22
sub cl, 116
cmovle rcx, rax
sub rdi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
cmovnp edx, edx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
xor dl, cl
mul rbx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 81
sub dl, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
sub edx, edi
or dx, 14
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
cmovnl rdi, rbx
add dx, -90
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
cmp sil, dl
add sil, sil
test esi, 94
btc si, ax
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
sbb dl, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
