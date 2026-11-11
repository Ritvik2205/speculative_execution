.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
xor si, dx
cmovnz di, ax
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
xor sil, dil
cmovz ebx, ebx
cmovnz rcx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnbe si, di
adc bl, al
mov rax, -8100960678429780222
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
add dl, al
not rcx
btr dx, 209
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr di, cx
not dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
add rax, 1049076260
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
sbb bl, 121
cmovnb bx, bx
and ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
