.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
imul cl
adc edi, 76
sub ax, di
cmovb di, di
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
cmovnb bx, bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 88
movzx rdi, ax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 78
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
sub sil, sil
cmovnp rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
movzx ebx, dl
and sil, -49
xor al, 59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
add cx, cx
sub dl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and dil, 96
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, al
cmovle rcx, rdx
adc ebx, 117
cmp eax, -92285311
cmovnp rdi, rax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmp dx, 31
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
add al, cl
test rbx, 8
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 92
not edx
add dl, -10 # instrumentation
cmovnbe edx, eax
sub bl, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
