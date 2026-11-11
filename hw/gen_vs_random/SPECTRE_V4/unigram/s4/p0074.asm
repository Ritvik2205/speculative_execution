.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
btc ax, di
neg rax
btr rdx, rbx
dec rsi
and bl, 26
cmp dil, -124
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovle rbx, rsi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1
xor ax, 25554
imul cl
or dil, dil
sub rcx, 11
and rdi, -2
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sub al, 50
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
cmovz edi, ebx
and si, 68
not dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
cmovo rcx, rcx
sbb bl, 57
inc esi
bts eax, edx
cmovb rdx, rbx
sbb rdx, 66
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
add dl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 73
not si
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 54
cmovp esi, edx
cmovz esi, eax
cmovle rax, rbx
sbb ax, -19255
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
