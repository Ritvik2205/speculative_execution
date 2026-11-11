.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
add bl, -57 # instrumentation
cmovno rbx, rax
or ax, -30990
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
cmp edi, ebx
cmp cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
imul edx, edx
or rdx, rax
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
adc bl, al
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
test al, bl
cmovo si, dx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovnbe si, di
xor sil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
dec cx
cmovp rax, rcx
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnz rcx, rax
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
xor si, dx
mov rax, -4627568876460436527
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
cmovle rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
or rax, rcx
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
cmovz ebx, ebx
movzx edi, bx
test cl, bl
not dil
cmovnz di, ax
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
test dl, 114
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -10
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
