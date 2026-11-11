.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
imul bl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
mul cl
neg cx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
mov dl, al
xor eax, -1772786275
cmovnb ecx, eax
adc rcx, 57
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
test ecx, -1293796332
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
movzx ax, cl
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
mov cl, al
add al, 116 # instrumentation
cmovns ebx, esi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
btc rdi, rbx
or rax, 1042095162
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
sub rsi, -48
cmovl si, dx
add cl, -75 # instrumentation
sbb eax, -676736552
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
imul dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
bt ecx, 25
cmp rax, 1097504565
add cl, -122 # instrumentation
cmovp bx, bx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp dl, cl
mul ecx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
adc al, dl
or ax, -29521
sbb al, dl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
movsx si, cl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sub rdi, rax
cmovs rdx, rcx
cmovnz rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
