.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
or rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
xor si, dx
cmovle rax, rbx
cmp edi, ebx
cmovo si, dx
cmovnz di, ax
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
or rax, rcx
cmovnbe si, di
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmovnz rcx, rax
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
imul edx, edx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
cmp cl, dl
add dl, -25 # instrumentation
cmovs rbx, rcx
adc bl, al
xor sil, dil
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
cmovz ebx, ebx
dec cx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmovp rax, rcx
test dl, 24
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
test cl, bl
movzx edi, bx
test al, bl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or ax, -29521
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
mov rax, -4627568876460436527
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and al, dl
add bl, -57 # instrumentation
cmovno rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
