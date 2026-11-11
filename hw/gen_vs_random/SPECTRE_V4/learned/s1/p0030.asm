.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
add cl, -6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
add cl, -42 # instrumentation
adc sil, bl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
or dl, al
and eax, -24
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
cmovnle cx, cx
cmovns ax, ax
cmovs eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, eax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bt esi, ecx
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
xchg ecx, edi
neg ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
add edi, esi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sub ebx, 48
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
mov dl, dl
xor al, 29
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
cmp bl, bl
cmp ax, -15031
cmovnbe cx, ax
mov edi, -1544998000
sub dil, dil
cmovz rdi, rsi
sbb esi, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
