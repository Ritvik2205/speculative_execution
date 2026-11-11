.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, cl
bt edx, ecx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and dx, -107
add dil, -61
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
movzx cx, sil
add rax, rax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 19
cmovnz rax, rcx
cmovs rdi, rsi
sub di, dx
cmovo cx, si
movsx esi, ax
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
cmovo ebx, edx
sub sil, -35
mov al, al
cmovnle ecx, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
btr rdx, rdx
and cl, bl
sub cx, -114
sub dl, dil
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 43
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 36
add al, 80 # instrumentation
mov dl, cl
sbb cl, bl
cmp rcx, rbx
xor rcx, -111
add dl, dil
or bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
sub ecx, -107
or sil, al
cmp dil, al
xor al, 57
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
add cl, -106 # instrumentation
cmovno rbx, rsi
inc cl
and cx, -117
adc rcx, rax
xor rdi, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
