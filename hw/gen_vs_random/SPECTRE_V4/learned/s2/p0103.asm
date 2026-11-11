.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
add dl, al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
xor ax, si
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
movsx rcx, bl
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
cmovz esi, ecx
or sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 46
imul bx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
or al, sil
xchg ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdx]
xchg si, bx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
and eax, -24
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 63
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
cmovl rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
