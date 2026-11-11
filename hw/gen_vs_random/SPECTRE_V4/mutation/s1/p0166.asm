.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
or dl, dl
sub edx, esi
cmp rax, 1682181214
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
mul dl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
cmp bl, dl
inc edi
add bl, -91 # instrumentation
inc rdi
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
mov dx, 22195
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
test cl, -52
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
movsx rdx, ax
or ecx, 17
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
mov al, 124
cmovs ax, cx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
btr ax, bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
add eax, -1628652110
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and al, -1
bswap esi
neg sil
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
sub eax, -1804712207
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
bts rsi, 236
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
