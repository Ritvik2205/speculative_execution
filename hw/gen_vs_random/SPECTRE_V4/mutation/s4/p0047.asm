.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovle rax, rbx
movzx edi, bx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovz ebx, ebx
cmovnz rcx, rax
xor si, dx
cmovo si, dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
adc bl, al
cmovnz di, ax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
or ax, -13633
test dl, 114
cmovp rax, rcx
not dil
cmp cl, dl
add bl, -57 # instrumentation
cmovno rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or rax, rcx
test cl, bl
mov rax, -4627568876460436527
add dl, -25 # instrumentation
cmovs rbx, rcx
cmovnbe si, di
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
xor sil, dil
and al, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
dec cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
imul edx, edx
test al, bl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
cmp edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
