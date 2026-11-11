.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add cl, -75 # instrumentation
sbb eax, -676736552
mul cl
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
mov dl, al
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
adc rcx, -99
cmovl si, dx
or ax, 57
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
sbb al, dl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
movsx si, cl
sub rdi, rax
add al, 116 # instrumentation
cmovns ebx, esi
movzx ax, cl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
bt ecx, 135
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
btc rdi, rbx
neg cx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mul ecx
cmp rax, 2052654950
or rax, 1042095162
mov cl, al
imul dl
cmovs rdx, rcx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
test ecx, -907816607
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
imul bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
xor eax, -1772786275
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
add cl, -122 # instrumentation
cmovp bx, bx
cmovnz rdi, rsi
adc al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
sub rsi, -89
cmovnb ecx, eax
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
