.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
not ax
sbb dx, 4
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
sbb ecx, 90
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and al, -36
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 100
add cl, 122 # instrumentation
cmovz rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
sbb bl, al
test bl, 0
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
cmp sil, bl
add dl, -26 # instrumentation
btr edx, 30
test rcx, -2118888343
xor dl, 36
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
xor cx, 80
adc bl, sil
test al, dl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
or sil, sil
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 28
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmovz dx, dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
sbb dl, -99
sbb dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
neg al
sbb al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
