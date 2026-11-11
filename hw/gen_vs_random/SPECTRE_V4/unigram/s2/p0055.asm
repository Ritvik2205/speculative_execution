.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
cmp dil, al
or ecx, 44
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sbb dx, 93
or di, cx
xchg sil, al
sbb dl, -99
cmovnbe dx, cx
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmp dil, cl
movzx ax, al
or sil, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
or ebx, edx
add bl, -109 # instrumentation
sbb esi, 11
xchg al, sil
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
imul rsi, rax, 30
add cx, 36
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
cmovnl bx, di
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
sub dl, al
and rbx, 69
add cl, 72 # instrumentation
cmovle cx, bx
mov edx, 15
add al, al
test rbx, 94
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 58
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
sub esi, 58
sub dl, 43
mul dl
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
cmp ebx, 38
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
test edx, 573099753
xor al, bl
cmovno eax, ebx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
test cl, sil
or edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
