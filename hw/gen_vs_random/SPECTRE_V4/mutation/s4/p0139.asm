.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rbx
bt ecx, 247
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
test ecx, -907816607
movzx ax, cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
add cl, -122 # instrumentation
cmovp bx, bx
mov cl, al
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
sub rsi, -48
add al, 116 # instrumentation
cmovns ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
or rax, -2144083737
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
cmovl si, dx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
mov dl, al
cmp rax, 2096656187
sub rdi, rax
adc al, dl
imul bl
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
cmovnz rdi, rsi
cmovnb ecx, eax
add cl, -75 # instrumentation
sbb eax, -676736552
adc rcx, 57
movsx si, cl
neg cx
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
xor eax, -1772786275
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
mul ecx
cmovs rdx, rcx
cmp dl, cl
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
imul dl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
or ax, 28571
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
