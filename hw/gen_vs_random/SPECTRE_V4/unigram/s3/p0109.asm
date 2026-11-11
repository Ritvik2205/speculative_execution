.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
sub cx, di
or bl, cl
and dil, 8
mov cl, dl
test eax, 1947430392
xor rax, 944027678
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
movsx rax, bl
sub ecx, -107
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
dec dl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
or bx, -33
imul sil
and al, al
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 93
test rbx, rax
sbb si, 33
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
sub al, sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and bl, -119
cmovb rax, rcx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
neg cl
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 93
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
cmovnb rcx, rsi
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
btr dx, 209
sub sil, dil
sub sil, 71
cmovo cx, ax
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rax
cmovz si, dx
xor ecx, 35
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
adc al, -70
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmovle rdx, rcx
cmovnb ax, dx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
add bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
