.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
test bl, 0
lea rdx, qword ptr [rcx + rsi + 100]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 3
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
xor dl, sil
dec dx
sbb al, -47
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
imul esi, ebx, 83
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sub esi, edx
or dl, dl
cmovo rcx, rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
mov rsi, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
adc dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
or ebx, ecx
test bl, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovp rdi, rcx
or bx, dx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 57
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 52
cmovnp si, dx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
