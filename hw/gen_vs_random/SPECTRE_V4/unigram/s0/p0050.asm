.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, 4
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
xor ax, si
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
cmovnz ebx, edx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
imul cx, di
cmp cx, 88
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 37
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 6
bt ecx, ebx
sub ecx, 95
not cx
bts eax, 209
cmovs rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 32
xor al, 69
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
dec sil
cmovnb bx, bx
cmp cl, bl
cmp eax, -92285311
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
sub cx, bx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
mul esi
sbb cl, -104
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add al, -10 # instrumentation
cmovnbe eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
xor cl, -54
or dil, al
sub al, sil
sbb al, 32
sbb ax, -26881
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
sbb bl, 57
xor dil, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
