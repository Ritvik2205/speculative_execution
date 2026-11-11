.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
mul cl
cmp dl, cl
sub rdi, rax
mov dl, al
btc rdi, rbx
add cl, -122 # instrumentation
cmovp bx, bx
cmovnb ecx, eax
imul bl
or ax, 57
movsx si, cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
sub rsi, -89
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
xor eax, -48271836
movzx ax, cl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
adc rcx, 57
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
test ecx, -304234347
or rax, 1042095162
add cl, -75 # instrumentation
sbb eax, -676736552
cmovnz rdi, rsi
add al, 116 # instrumentation
cmovns ebx, esi
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
cmovl si, dx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
bt ecx, 247
neg cx
imul dl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmovs rdx, rcx
sbb al, dl
mov cl, al
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
adc al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmp rax, 1682181214
mul ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
