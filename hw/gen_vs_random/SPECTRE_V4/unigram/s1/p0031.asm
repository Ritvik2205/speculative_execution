.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ebx, ecx
not cx
add si, 4
btr rax, rsi
imul rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
movzx ax, bl
btc edx, 56
and edi, 28
bt eax, 84
add dx, -90
cmovnbe rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
xor al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
cmovnbe rdx, rbx
mov sil, 34
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
test eax, 1880179600
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp dil, -124
imul cx, di, 11
movzx si, sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov rax, rcx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
btc si, bx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and bx, 95
cmp dl, 22
cmp di, bx
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
mov rdx, 80
mov rbx, 9101099553822202722
add sil, -10 # instrumentation
cmovnbe esi, edx
cmovo rdx, rbx
cmovo rax, rax
cmovl rsi, rdi
cmp bl, 13
cmovb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
