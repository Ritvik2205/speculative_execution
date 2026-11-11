.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
inc bx
sub bl, 56
mov edx, -950755477
cmp eax, edx
or rsi, 73
or rcx, rax
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
mul bl
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
cmovz bx, si
dec si
btr rbx, rdx
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
cmp al, sil
movsx rdx, ax
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
sbb esi, 31
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
dec cl
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
mov rax, rax
xor si, -73
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 64
sbb al, sil
dec cx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
imul edi, ecx, 73
add dl, -91 # instrumentation
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
mov al, 124
mov sil, bl
cmovnle ax, cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
add sil, 3
neg edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
