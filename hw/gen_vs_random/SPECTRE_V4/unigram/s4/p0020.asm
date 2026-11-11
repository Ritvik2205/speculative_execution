.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
sub al, dl
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 82
movzx ebx, bx
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 100
or ax, -15282
xor al, al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 64
add dil, -71 # instrumentation
adc dil, cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
mul dl
movzx ebx, sil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 100
test rsi, 49
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
add al, -71 # instrumentation
adc al, dl
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
cmp dil, -124
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
cmovle rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
or di, 0b1000000000000000 # instrumentation
bsf di, di
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cmovp eax, ecx
cmovz ebx, ecx
imul rdi
cmovnb ebx, esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
cmp dx, 83
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add cl, dl
cmovs rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor al, -2
cmp sil, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
cmovnbe ecx, eax
bt eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
