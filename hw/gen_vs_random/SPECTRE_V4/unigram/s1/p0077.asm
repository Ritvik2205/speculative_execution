.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc si
cmovbe rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
cmp al, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
xchg dil, dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
xchg ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
imul edi, ecx
xor esi, -82
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 34
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
cmp rax, -1247892360
xor rax, rdi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
mov al, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
movzx rdx, cx
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
or edx, -128
cmovbe ecx, ebx
sbb al, 43
xor dl, al
cmovp rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
mov di, 41
sub sil, 71
test edx, 1479885278
sub cl, -94
mov rcx, rdi
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
cmp cl, sil
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], esi
cmovnz rax, rcx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
inc edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
