.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
cmovnbe eax, edx
adc edx, edi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
adc dil, 112
cmovl si, di
sbb cl, dl
adc ecx, 55
sbb eax, -747044528
btc rcx, rax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
sub ax, 24426
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
bt rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
bts bx, cx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and dl, sil
test ecx, 860867711
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 2052654950
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
xor eax, 1185843233
or ax, 7381
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 177
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
