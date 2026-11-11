.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
imul sil
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bt ax, 145
cmovnb si, bx
adc sil, 111
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add eax, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add dl, 77 # instrumentation
cmovno dx, bx
mul cl
and dl, dl
test bl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
adc al, 43
sub rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
bts dx, 26
add cl, -6 # instrumentation
cmovo rsi, rax
xchg bx, bx
xor al, -84
xor dl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
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
cmp rax, 1682181214
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor eax, 308288205
or ax, -30990
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 247
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
