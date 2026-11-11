.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
cmovnb ebx, edx
and ecx, 21
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 29
sub esi, ecx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 78
cmp dl, dl
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
cmovz eax, edx
mov rax, rdx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor si, di
add cl, -117 # instrumentation
cmovs rdx, rbx
sbb rsi, -115
imul ax, bx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
adc bx, bx
mov sil, 94
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 83
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
mov esi, edx
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or dl, bl
inc si
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
test al, cl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
bt edx, 24
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
sbb sil, 108
test ax, 23760
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
bts ebx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
