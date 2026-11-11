.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmp rbx, 35
sub bl, bl
xchg eax, edi
cmovp di, dx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 96
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
cmp sil, dl
xor bl, 93
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
not dl
imul esi, eax, 64
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 17
cmovns ax, si
cmovnbe rsi, rdi
sub cl, cl
bt ecx, 27
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
movzx rax, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
imul cx, ax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 5
imul dl
add dl, -114 # instrumentation
cmovl ax, di
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or edi, ebx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 29
bt ecx, 73
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
imul rbx
test rax, -344032571
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
