.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -672265139
test cl, -52
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add eax, -105
mov dx, 11552
cmovs ax, cx
cmp bl, dl
sub edx, esi
btr ax, bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmp rax, 1097504565
mov al, dl
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmovnb rdx, rax
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
mul dl
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
cmovnz rsi, rcx
add bl, -91 # instrumentation
inc rdi
neg sil
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
or ecx, 102
bswap esi
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
inc edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and al, -87
bts rsi, 236
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
movsx rdx, ax
mov al, 90
or dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
