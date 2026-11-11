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
test esi, -2111618709
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
cmp dl, 95
cmovp rbx, rcx
and ecx, edx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
not bx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmovl rbx, rsi
add dl, dl
sbb esi, ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb al, -43
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
imul si, di, -97
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
cmovnb esi, ebx
btc rdx, 130
and bl, -30
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
sub rcx, 126
imul cx, dx, 98
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
