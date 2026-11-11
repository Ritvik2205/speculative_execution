.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
movzx ax, dil
or di, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
or dl, dl
test eax, 1600638830
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
or edi, -78
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmovl ebx, edx
sbb cx, cx
movsx edi, sil
neg rdx
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
cmovno rdi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
adc rax, -691707152
cmovnp bx, si
bswap edx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dil
neg di
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
xor ecx, ecx
or dx, di
mul ax
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
mov bl, cl
movzx esi, al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 52
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
cmp bl, bl
cmovno eax, edx
mov bl, bl
imul eax, eax, 3
bt dx, ax
xor edx, edx
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
movsx ax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
