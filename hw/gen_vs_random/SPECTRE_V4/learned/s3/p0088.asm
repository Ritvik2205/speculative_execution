.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
or eax, -1434249782
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 54
xor rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
xor dil, 16
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor al, 102
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
add al, 118
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
or cl, dil
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovnz rcx, rdi
setnz dil
sub esi, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
test ecx, 95
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and eax, -37
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
mov cl, cl
test edx, ebx
add dl, -94 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmp dil, dl
inc edx
cmp al, bl
bt ebx, 228
sbb dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
