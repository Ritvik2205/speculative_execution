.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
adc bl, al
cmovz ebx, ebx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovnz rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
test cl, bl
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
cmp cl, dl
cmovo si, dx
movzx edi, bx
cmp edi, ebx
xor sil, dil
dec cx
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
cmovle rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
xor si, dx
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, 7381
test al, bl
cmovnz di, ax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
mov rax, -4627568876460436527
test dl, -125
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
not dil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
imul edx, edx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add bl, -57 # instrumentation
cmovno rbx, rax
cmovp rax, rcx
cmovnbe si, di
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
