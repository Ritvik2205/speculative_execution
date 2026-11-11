.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
mul ecx
cmovnb ecx, eax
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
or ax, 28571
add al, 116 # instrumentation
cmovns ebx, esi
sub rdi, rax
cmp rax, 40
movzx ax, cl
neg cx
mul cl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
movsx si, cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
adc rcx, 57
test ecx, -907816607
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
cmp dl, cl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
xor eax, 365940537
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
mov dl, al
imul bl
cmovnz rdi, rsi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
imul dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
btc rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
mov cl, al
or rax, -2144083737
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
adc al, dl
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmovl si, dx
sub rsi, -104
add cl, -75 # instrumentation
sbb eax, -676736552
bt ecx, 25
add cl, -122 # instrumentation
cmovp bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
