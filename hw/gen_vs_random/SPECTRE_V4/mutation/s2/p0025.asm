.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb eax, -676736552
btc rdi, rbx
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmovl si, dx
cmovnb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
movsx si, cl
sub rsi, -48
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
imul dl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
neg cx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnz rdi, rsi
adc rcx, -99
test ecx, -1293796332
cmp dl, cl
mov cl, al
or rax, 980130592
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, -30990
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
imul edx, edx
cmovo si, dx
cmp cl, dl
movzx edi, bx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovp rax, rcx
test dl, 24
cmp edi, ebx
not dil
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
