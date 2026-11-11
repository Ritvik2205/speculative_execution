.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 82
cmovnbe esi, eax
cmovz ecx, ecx
cmp sil, dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
cmovl rcx, rdi
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
xor di, ax
cmovle si, bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
add edi, 11
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 48
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 89
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 13
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
sub edi, ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
test ax, cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
cmovnle rbx, rbx
dec rax
imul bl
sbb sil, 108
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
cmovs edx, esi
add dx, dx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
mov esi, 20
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
adc bl, bl
sub si, 39
add dl, -99 # instrumentation
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
