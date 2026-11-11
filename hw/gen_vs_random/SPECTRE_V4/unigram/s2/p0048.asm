.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 37
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 30
imul rax, rdi
dec al
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdx
cmp bx, cx
imul dx, dx
cmp al, 114
cmovnp rdx, rax
inc rsi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
neg eax
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
cmp dl, cl
add al, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
cmovp edx, eax
imul esi, esi, 60
btr di, ax
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
mov rbx, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 29
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 37
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
movsx cx, al
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
add al, -109 # instrumentation
cmovns cx, si
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
adc bl, dil
sub edx, 73
cmovz eax, edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
add sil, al
cmovnz rdi, rdx
add al, 87 # instrumentation
cmovz esi, eax
add dl, 45 # instrumentation
cmovbe rbx, rax
cmp esi, -84
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
