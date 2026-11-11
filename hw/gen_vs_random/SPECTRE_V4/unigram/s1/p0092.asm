.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -62
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and ax, 25163
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sub dil, sil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 11
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test cl, -10
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test cx, 7280
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 35
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
dec al
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovp rbx, rax
cmovnp dx, si
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and dil, al
xor bl, al
cmovnz rdi, rdx
cmovl ebx, edi
btr ax, 109
xchg ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
test edi, 2142010790
add al, 121 # instrumentation
movsx ebx, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
sbb dil, 53
neg rbx
imul esi, eax
mov bl, al
or edx, -83
mul rbx
adc dx, di
xor dil, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
