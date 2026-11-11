.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
or rdx, rax
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
cmovnz rcx, rax
cmovz ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor sil, dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmp edi, ebx
test cl, bl
test al, bl
xor si, dx
test dl, 24
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovo si, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
adc bl, al
add dl, -25 # instrumentation
cmovs rbx, rcx
cmovp rax, rcx
or ax, 28571
imul edx, edx
or rax, rcx
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
not dil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
movzx edi, bx
cmovnz di, ax
cmovnbe si, di
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
cmovle rax, rbx
mov rax, -4627568876460436527
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
