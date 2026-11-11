.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
or ax, -13633
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sub rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
mul ecx
sub rsi, -104
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
cmovnz rdi, rsi
test ecx, -1293796332
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
mov dl, al
imul dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
neg cx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
imul bl
cmovl si, dx
cmovnb ecx, eax
movsx si, cl
mul cl
sbb al, dl
or rax, 185991441
cmp rax, -1070057082
add cl, -75 # instrumentation
sbb eax, -676736552
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
xor eax, 365940537
adc al, dl
add cl, -122 # instrumentation
cmovp bx, bx
adc rcx, 57
add al, 116 # instrumentation
cmovns ebx, esi
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
cmp dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
bt ecx, 25
cmovs rdx, rcx
mov cl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
movzx ax, cl
btc rdi, rbx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
