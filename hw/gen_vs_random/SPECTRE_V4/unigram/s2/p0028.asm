.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
adc dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
cmovnl rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
or al, al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
test eax, 1947430392
and dl, dl
cmovbe edi, esi
sub ax, 6579
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 49
xor cl, cl
cmovnb rdx, rbx
cmp al, 115
mov ax, bx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovno edi, ecx
xor ax, di
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 33
cmovno rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 38
xor bx, cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
add al, sil
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
test ecx, esi
sub rbx, 101
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
adc dl, 99
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
adc edi, -83
inc al
or dil, dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
xor rbx, rcx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
