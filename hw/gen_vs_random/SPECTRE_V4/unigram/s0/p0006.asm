.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
mov rsi, rcx
or dx, di
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 56
cmp di, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
add cl, cl
sbb dl, dl
cmovle rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
add rax, 3
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
xor esi, edi
xor sil, al
sbb esi, 68
test rax, -331426050
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 28
cmovns edx, eax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
add ebx, 3
adc cx, cx
imul rdi
imul bl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
adc di, -110
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
cmovp si, di
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
cmovnp si, si
test edx, ecx
and sil, bl
sub dl, sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
test rax, -331426050
not ax
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
