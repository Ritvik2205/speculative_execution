.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
test cl, -119
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
neg sil
cmovnb rdx, rax
add eax, -2075159577
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
movsx rdx, ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
cmovs ax, cx
sub edx, esi
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
mov al, dl
add bl, -91 # instrumentation
inc rdi
sub eax, -494922880
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
bswap esi
btr ax, bx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and al, -28
cmp rax, 40
inc edi
mov dx, 11552
mul dl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
bts rsi, 236
or ecx, 17
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
mov al, 90
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
