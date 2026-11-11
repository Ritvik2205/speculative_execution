.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 122
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
test rdi, 1222000858
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and esi, 2
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and eax, -1145483375
cmovbe dx, di
imul dx
bts di, 30
dec dl
test al, 27
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
inc cl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or al, al
add al, -99
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
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
sbb al, -39
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
imul si, di, -97
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
cmovnb esi, ebx
btc rdx, 178
and bl, 76
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
