.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rbx
cmovnb ecx, eax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
adc rcx, 57
adc al, dl
bt ecx, 177
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
add cl, -75 # instrumentation
sbb eax, -676736552
movzx ax, cl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
or ax, -26182
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
sub rsi, -104
or rax, -823069511
cmp rax, -47
test ecx, -304234347
add cl, -122 # instrumentation
cmovp bx, bx
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
imul dl
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
add al, 116 # instrumentation
cmovns ebx, esi
cmp dl, cl
imul bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
cmovl si, dx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
neg cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
mul cl
mul ecx
cmovnz rdi, rsi
cmovs rdx, rcx
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov cl, al
xor eax, 1760581269
mov dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
movsx si, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
