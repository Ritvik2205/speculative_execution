.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -222751961
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, -82
cmovp rbx, rcx
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
sbb ax, 10407
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
cmp rsi, 74
dec si
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
add cl, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
or eax, -1213318393
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
