.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sbb bl, al
xor eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
cmp bl, al
and bx, ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
cmp sil, -100
and sil, cl
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 25
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sub bx, 24
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
inc cl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
bt ax, cx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
or al, dil
cmovno rcx, rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
sbb al, sil
xchg sil, dl
cmovs esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
xor di, bx
or dil, al
bts si, di
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
cmovl rax, rdx
adc bx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
