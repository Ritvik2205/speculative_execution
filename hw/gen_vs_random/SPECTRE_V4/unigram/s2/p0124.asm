.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
btr rdi, 61
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 19
test bl, cl
cmovl rbx, rdi
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 80
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
sbb cl, 40
sbb rbx, 20
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
sbb bl, 121
dec ax
or dl, -26
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sbb cl, 12
cmovle rdx, rdi
bts bx, 102
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov cl, al
not rdi
xor di, 61
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and al, 75
mov dl, dl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
sbb dl, -71
sub cl, -119
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
sub di, di
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
or rdx, 1
and sil, -84
and ecx, 71
sub al, -128
neg rdi
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
mov bl, bl
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
