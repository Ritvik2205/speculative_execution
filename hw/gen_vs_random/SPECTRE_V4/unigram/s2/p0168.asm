.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rbx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 75
add rsi, rcx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
sbb cl, -104
cmp cl, 14
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
bts rax, rax
sbb sil, dl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ebx
test ebx, 1263899340
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
or edx, eax
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 30
xor di, -43
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
mul esi
sub sil, sil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
imul cx, bx
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
bswap rdi
inc dx
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
or edi, 36
adc cx, cx
xor si, ax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
xchg dl, sil
mul ax
imul rdi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
xchg bx, si
add cl, 72 # instrumentation
cmovle cx, ax
cmovnbe eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
