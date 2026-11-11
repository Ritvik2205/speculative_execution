.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul ax
adc rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bts esi, esi
cmp rax, rsi
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 58
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
mov al, cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
adc rbx, 60
sub sil, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
bt rsi, 242
add rbx, rcx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmp dl, 83
adc si, -110
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
not cx
and dl, 124
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
sbb cx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
xor sil, sil
xor edx, 44
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
test cl, cl
dec dx
xchg ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmovnb eax, eax
add cl, -62
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and cx, -117
imul rsi, rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 29
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
adc cx, 2
xor cl, -73
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cmovnb di, cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmovnle ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
