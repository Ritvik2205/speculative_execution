.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovnz di, ax
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
xor si, dx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
mov rax, -8100960678429780222
xor sil, dil
or ax, -29521
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
add dl, -25 # instrumentation
cmovs rbx, rcx
cmovle rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
cmovz ebx, ebx
test al, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
movzx edi, bx
cmovp rax, rcx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
test dl, 114
and al, dl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
cmovnbe si, di
not dil
dec cx
cmovo si, dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmp edi, ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
adc bl, al
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
add bl, -57 # instrumentation
cmovno rbx, rax
test cl, bl
cmovnz rcx, rax
or rax, rcx
imul edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
